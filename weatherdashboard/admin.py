from django.contrib import admin
from .models import GeneralWeatherData, DetailedWeatherData, HeatUnitsData, ChillUnitsData, SeasonalChillUnitsData, WeatherStation

# Register your models here.
admin.site.register(GeneralWeatherData)
admin.site.register(DetailedWeatherData)
admin.site.register(HeatUnitsData)
admin.site.register(ChillUnitsData)
admin.site.register(SeasonalChillUnitsData)
admin.site.register(WeatherStation)