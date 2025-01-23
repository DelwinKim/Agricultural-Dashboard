from django.shortcuts import render
from django.utils.dateformat import DateFormat
from django.http import JsonResponse
from django.core.paginator import Paginator
from django.views.decorators.cache import cache_control
from django.views.decorators.csrf import csrf_exempt
from django.http import HttpResponseForbidden
from .models import GeneralWeatherData, DetailedWeatherData, HeatUnitsData, SeasonalChillUnitsData
from datetime import datetime, timedelta
from zoneinfo import ZoneInfo
from .forms import DataDownloadForm
import csv
from django.http import HttpResponse

regions_and_stations = {"Coastal Bend":  ["Corpus Christi Agrilife", "Corpus Christi North", "Corpus Christi South", "Dickinson", 
                                          "Driscoll", "Freer", "Garwood", "Goliad", "Houston", "Houston North", "Kingsville", 
                                          "Memorial Village", "Refugio", "Richmond North", 
                                          "Richmond South", "Spring", "Victoria County West"],
                        "East Texas": ["Not Available"],
                        "Greater Texas": ["Not Available"],
                        "Lower Rio Grande": ["Not Available"],
                        "South Central": ["Not Available"],
                        "The Metroplex": ["Not Available"],
                        "West Texas": ["Not Available"],
                        "Winter Garden": ["Not Available"],
                       }
def home_page(request):
    # stations = ["Corpus Christi Agrilife", "Corpus Christi North", "Corpus Christi South", "Dickinson", "Driscoll", "Freer", 
    #             "Garwood", "Goliad", "Houston", "Houston North", "Kingsville", "Memorial Village", "Refugio", "Richmond North", 
    #             "Richmond South", "Spring", "Victoria County West"]

    central = ZoneInfo("America/Chicago")
    now_central = datetime.now(central)
    yesterday_central = (now_central - timedelta(days=1)).date()
    two_days_ago = (now_central - timedelta(days=2)).date()
    
    # Fetch the most recent general weather data for each station
    recent_weather_data = {}
    for station in regions_and_stations["Coastal Bend"]:
        recent_weather = GeneralWeatherData.objects.filter(station__name=station).order_by('-date').first()
        if recent_weather and (recent_weather.date == yesterday_central or recent_weather.date == two_days_ago):
            recent_weather_data[station] = recent_weather
    
    return render(request, "weatherdashboard/home_page.html", {
        'recent_weather_data': recent_weather_data,
        'regions_and_stations': regions_and_stations,
    })

@cache_control(max_age=3600 * 6)  # Cache the view for 1 hour FIXME: NOt sure about this caching, does it even work, also look at caching for fetch_data_for_tables
def station(request, station_name):
    seasonal_chill_units = SeasonalChillUnitsData.objects.filter(station__name=station_name).order_by('-month_num')
    total_method_1 = sum(unit.method_1_total for unit in seasonal_chill_units)
    total_method_2 = sum(unit.method_2_total for unit in seasonal_chill_units)
    
    return render(request, "weatherdashboard/station.html", {
        'station_name': station_name,
        'regions_and_stations': regions_and_stations,
        'seasonal_chill_units': seasonal_chill_units,
        'total_method_1': total_method_1,
        'total_method_2': total_method_2,
    })
    
# Provides the data that populates the tables through ajax
# @cache_control(max_age=3600 * 6)  # Cache the view for 1 hour
def fetch_data_for_tables(request, station_name):
    if request.headers.get('X-Requested-With') != 'XMLHttpRequest': #implement the 404 not found page
        return HttpResponseForbidden("Forbidden")
    
    draw = int(request.GET.get("draw", 0))
    start = int(request.GET.get("start", 0))
    length = int(request.GET.get("length", 7))
    table_name = request.GET.get("table_name", "generalWeatherTable")

    if table_name == "generalWeatherTable":
        queryset = GeneralWeatherData.objects.filter(station__name=station_name).order_by("-date")
        fields = ["date", "eto", "max_temp", "min_temp", "min_rh", "solar_rad", "rainfall", "wind_4am", "wind_4pm", "battery_min", "battery_max"]
    elif table_name == "detailedWeatherTable":
        queryset = DetailedWeatherData.objects.filter(station__name=station_name).order_by("-date")
        fields = ["date", "average_temp", "dew_point", "max_dewpoint", "min_dewpoint", "wind_run", "soil_temp"]
    elif table_name == "heatUnitsTable":
        queryset = HeatUnitsData.objects.filter(station__name=station_name).order_by("-date")
        fields = ["date", "corn_heat_units", "cotton_heat_units", "sorghum_heat_units", "heat_units_50_degree", "heat_units_55_degree", "heat_units_60_degree"]
    # elif table_name == "seasonalChillUnitsTable":
    #     queryset = SeasonalChillUnitsData.objects.filter(station__name=station_name).order_by("-month_num")
    #     fields = ["month", "method_1_total", "method_2_total"]
    else:
        return JsonResponse({"error": "Invalid table name"}, status=400)

    # To handle the "All" case (length = -1)
    # if length == -1:
    #     length = queryset.count()  # Set length to total number of records

    # paginate the queryset
    # paginator = Paginator(queryset, length)
    # page_number = start // length + 1
    # print(f"-----------------start: {start}")
    # print(f"-----------------length: {length}")
    # print(f"-----------------page_number: {page_number}")
    # print(f"-----------------paginator: {paginator.num_pages}")
    # page_obj = paginator.get_page(page_number)

    currentPageList = queryset[start:start + length]  # FIXME: Just make sure this is correct and EFFICIENT

    data = []
    for obj in currentPageList:
        formatted_data = {field: getattr(obj, field) for field in fields}
        if 'date' in formatted_data:  # format the date field
            formatted_data['date'] = DateFormat(formatted_data['date']).format('M j, Y - D')
        data.append(formatted_data)

    response = {
        'draw': draw,
        'recordsTotal': queryset.count(),
        'recordsFiltered': queryset.count(),
        'data': data,
    }

    return JsonResponse(response)


def download_data(request):
    if request.method == 'POST':
        form = DataDownloadForm(request.POST)
        if form.is_valid():
            station = form.cleaned_data['station']
            start_date = form.cleaned_data['start_date']
            end_date = form.cleaned_data['end_date']
            selected_fields = form.cleaned_data['fields']

            # Ensure 'date' is always included
            fields = ['date'] + selected_fields

            # Dictionary to merge data by date
            merged_data = {}

            # Process GeneralWeatherData
            if any(field in selected_fields for field in ['eto', 'max_temp', 'min_temp', 'min_rh', 'solar_rad', 'rainfall', 'wind_4am', 'wind_4pm', 'battery_min', 'battery_max']):
                general_weather_data = GeneralWeatherData.objects.filter(
                    station=station, date__range=[start_date, end_date]
                )
                for obj in general_weather_data:
                    date = obj.date.strftime('%Y-%m-%d')
                    if date not in merged_data:
                        merged_data[date] = {'date': date}
                    merged_data[date].update({field: getattr(obj, field, None) for field in selected_fields if hasattr(obj, field)})

            # Process DetailedWeatherData
            if any(field in selected_fields for field in ['average_temp', 'dew_point', 'max_dewpoint', 'min_dewpoint', 'wind_run', 'soil_temp']):
                detailed_weather_data = DetailedWeatherData.objects.filter(
                    station=station, date__range=[start_date, end_date]
                )
                for obj in detailed_weather_data:
                    date = obj.date.strftime('%Y-%m-%d')
                    if date not in merged_data:
                        merged_data[date] = {'date': date}
                    merged_data[date].update({field: getattr(obj, field, None) for field in selected_fields if hasattr(obj, field)})

            # Process HeatUnitsData
            if any(field in selected_fields for field in ['corn_heat_units', 'cotton_heat_units', 'sorghum_heat_units', 'heat_units_50_degree', 'heat_units_55_degree', 'heat_units_60_degree']):
                heat_units_data = HeatUnitsData.objects.filter(
                    station=station, date__range=[start_date, end_date]
                )
                for obj in heat_units_data:
                    date = obj.date.strftime('%Y-%m-%d')
                    if date not in merged_data:
                        merged_data[date] = {'date': date}
                    merged_data[date].update({field: getattr(obj, field, None) for field in selected_fields if hasattr(obj, field)})

            # Process SeasonalChillUnitsData
            # if any(field in selected_fields for field in ['method_1_total', 'method_2_total']):
            #     seasonal_chill_units_data = SeasonalChillUnitsData.objects.filter(
            #         station=station, month__range=[start_date, end_date]
            #     ).annotate(date=F('month'))
            #     for obj in seasonal_chill_units_data:
            #         date = obj.date.strftime('%Y-%m-%d')
            #         if date not in merged_data:
            #             merged_data[date] = {'date': date}
            #         merged_data[date].update({field: getattr(obj, field, None) for field in selected_fields if hasattr(obj, field)})

            # Convert merged data to a list of rows
            merged_rows = [merged_data[date] for date in sorted(merged_data.keys())]

            # Handle cases where no data is found
            if not merged_rows:
                return HttpResponse("No data found for the selected fields and date range.", status=400)

            # Prepare the CSV response
            response = HttpResponse(content_type='text/csv')
            response['Content-Disposition'] = f'attachment; filename="data_{station.name}_{start_date}_to_{end_date}.csv"'

            writer = csv.writer(response)
            writer.writerow(fields)  # Write header row
            for row in merged_rows:
                writer.writerow([row.get(field, 'N/A') for field in fields])  # Fill missing fields with 'N/A'

            return response
    else:
        form = DataDownloadForm()

    return render(request, 'weatherdashboard/download_data.html', {
        'form': form,
        'regions_and_stations': regions_and_stations,
    })