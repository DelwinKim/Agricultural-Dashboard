from django.core.management.base import BaseCommand
from django.apps import apps
from weatherdashboard.models import (
    BaseGeneralWeatherData,
    BaseDetailedWeatherData,
    BaseHeatUnitsData,
    BaseChillUnitsData,
    BaseSeasonalChillUnitsData,
)

class Command(BaseCommand):
    help = 'Create dynamic models for weather stations'

    def handle(self, *args, **kwargs):
        from weatherdashboard.models import WeatherStation

        stations = WeatherStation.objects.all()
        for station in stations:
            self.create_station_models(station.name)

    def create_station_models(self, station_name):
        sanitized_name = station_name.replace(" ", "")

        model_definitions = {
            "GeneralWeatherData": BaseGeneralWeatherData,
            "DetailedWeatherData": BaseDetailedWeatherData,
            "HeatUnitsData": BaseHeatUnitsData,
            "ChillUnitsData": BaseChillUnitsData,
            "SeasonalChillUnitsData": BaseSeasonalChillUnitsData,
        }

        for model_suffix, base_model in model_definitions.items():
            model_name = f"{sanitized_name}{model_suffix}"
            table_name = f"{sanitized_name.lower()}_{model_suffix.lower()}"

            class Meta:
                db_table = table_name
                managed = True

            attrs = {
                "__module__": __name__,
                "Meta": Meta,
            }

            apps.register_model(
                "weatherdashboard", type(model_name, (base_model,), attrs)
            )