from django.core.management.base import BaseCommand
from weatherdashboard.models import (
    GeneralWeatherData,
    DetailedWeatherData,
    HeatUnitsData,
    ChillUnitsData,
    SeasonalChillUnitsData
)

class Command(BaseCommand):
    help = "Delete all data from all models in your_app"

    def handle(self, *args, **kwargs):
        # Delete data from each model
        models = [
            GeneralWeatherData,
            DetailedWeatherData,
            HeatUnitsData,
            ChillUnitsData,
            SeasonalChillUnitsData
        ]
        for model in models:
            count = model.objects.all().delete()[0]  # Get the number of deleted records
            self.stdout.write(self.style.WARNING(f"Deleted {count} records from {model.__name__}"))

        self.stdout.write(self.style.SUCCESS("All data has been deleted successfully!"))
