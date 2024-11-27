# saves scraped data from the web scraper into the django models

from weatherdashboard.models import (
    GeneralWeatherData,
    DetailedWeatherData,
    HeatUnitsData,
    ChillUnitsData,
    SeasonalChillUnitsData,
    WeatherStation,
)

def save_general_weather(data, station_id):
    station = WeatherStation.objects.get(station_id=station_id)  # Get the station object
    for row in data:
        GeneralWeatherData.objects.update_or_create(
            station=station,  # Link data to station
            date=row[0],
            defaults={
                'eto': row[1],
                'max_temp': row[2],
                'min_temp': row[3],
                'min_rh': row[4],
                'solar_rad': row[5],
                'rainfall': row[6],
                'wind_4am': row[7],
                'wind_4pm': row[8],
                'battery_min': row[9],
                'battery_max': row[10],
            }
        )

def save_detailed_weather(data, station_id):
    station = WeatherStation.objects.get(station_id=station_id)  # Get the station object
    for row in data:
        DetailedWeatherData.objects.update_or_create(
            station=station,  # Link data to station
            date=row[0],
            defaults={
                'average_temp': row[1],
                'dew_point': row[2],
                'max_dewpoint': row[3],
                'min_dewpoint': row[4],
                'wind_run': row[5],
                'soil_temp': row[6],
            }
        )

def save_heat_units(data, station_id):
    station = WeatherStation.objects.get(station_id=station_id)  # Get the station object
    for row in data:
        HeatUnitsData.objects.update_or_create(
            station=station,
            date=row[0],
            defaults={
                'corn_heat_units': row[1],
                'cotton_heat_units': row[2],
                'sorghum_heat_units': row[3],
                'heat_units_50_degree': row[4],
                'heat_units_55_degree': row[5],
                'heat_units_60_degree': row[6],
            }
        )

def save_chill_units(data, station_id):
    station = WeatherStation.objects.get(station_id=station_id)  # Get the station object
    for row in data:
        ChillUnitsData.objects.update_or_create(
            station=station,
            date=row[0],
            defaults={
                'method_1_hours': row[1],
                'method_2_hours': row[2],
            }
        )

def save_seasonal_chill_units(data, station_id):
    station = WeatherStation.objects.get(station_id=station_id)  # Get the station object
    for row in data:
        SeasonalChillUnitsData.objects.update_or_create(
            station=station,
            month=row[0],
            defaults={
                'method_1_total': row[1],
                'method_2_total': row[2],
            }
        )
