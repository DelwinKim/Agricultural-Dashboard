from django.shortcuts import render
from django.utils.dateformat import DateFormat
from .models import GeneralWeatherData, DetailedWeatherData, HeatUnitsData, ChillUnitsData, SeasonalChillUnitsData
from django.http import JsonResponse
from django.core.paginator import Paginator
from django.views.decorators.cache import cache_control
from django.views.decorators.csrf import csrf_exempt
from django.http import HttpResponseForbidden


def index(request):
    return render(request, "weatherdashboard/index.html")

# Provides the data that populates the tables through ajax
@cache_control(max_age=3600 * 6)  # Cache the view for 1 hour
def fetch_data_for_tables(request):
    if request.headers.get('X-Requested-With') != 'XMLHttpRequest': #implement the 404 not found page
        return HttpResponseForbidden("Forbidden")
    
    draw = int(request.GET.get("draw", 0))
    start = int(request.GET.get("start", 0))
    length = int(request.GET.get("length", 7))
    table_name = request.GET.get("table_name", "generalWeatherTable")
    
    if table_name == "generalWeatherTable":
        queryset = GeneralWeatherData.objects.all().order_by("-date")
        fields = ["date", "eto", "max_temp", "min_temp", "min_rh", "solar_rad", "rainfall", "wind_4am", "wind_4pm", "battery_min", "battery_max"]
    elif table_name == "detailedWeatherTable":
        queryset = DetailedWeatherData.objects.all().order_by("-date")
        fields = ["date", "average_temp", "dew_point", "max_dewpoint", "min_dewpoint", "wind_run", "soil_temp"]
    elif table_name == "heatUnitsTable":
        queryset = HeatUnitsData.objects.all().order_by("-date")
        fields = ["date", "corn_heat_units", "cotton_heat_units", "sorghum_heat_units", "heat_units_50_degree", "heat_units_55_degree", "heat_units_60_degree"]
    else:
        return JsonResponse({"error": "Invalid table name"}, status=400)

    # To handle the "All" case (length = -1)
    # if length == -1:
    #     length = queryset.count()  # Set length to total number of records

    # paginate the queryset
    paginator = Paginator(queryset, length)
    page_number = start // length + 1
    page_obj = paginator.get_page(page_number)

    data = []
    for obj in page_obj.object_list:
        formatted_data = {field: getattr(obj, field) for field in fields}
        # Format the date field
        formatted_data['date'] = DateFormat(formatted_data['date']).format('M j, Y - D')
        data.append(formatted_data)


    response = {
        'draw': draw,
        'recordsTotal': queryset.count(),
        'recordsFiltered': queryset.count(),
        'data': data,
    }

    return JsonResponse(response)