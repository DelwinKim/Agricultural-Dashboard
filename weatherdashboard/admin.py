# from django.contrib import admin
# from .models import GeneralWeatherData, DetailedWeatherData, HeatUnitsData, ChillUnitsData, SeasonalChillUnitsData, WeatherStation

# # Register your models here.
# admin.site.register(GeneralWeatherData)
# admin.site.register(DetailedWeatherData)
# admin.site.register(HeatUnitsData)
# admin.site.register(ChillUnitsData)
# admin.site.register(SeasonalChillUnitsData)
# admin.site.register(WeatherStation)


from django.contrib import admin
from django.apps import apps

# Dynamically register all models in the app
app = apps.get_app_config('weatherdashboard')

for model_name, model in app.models.items():
    try:
        admin.site.register(model)
    except admin.sites.AlreadyRegistered:
        pass  # Ignore if the model is already registered
