import csv
from datetime import datetime
from django.core.management.base import BaseCommand
from weatherdashboard.models import (
    WeatherStation, GeneralWeatherData, DetailedWeatherData,
    HeatUnitsData, ChillUnitsData, SeasonalChillUnitsData
)

class Command(BaseCommand):
    help = 'Export data from models to CSV files'

    def handle(self, *args, **kwargs):
        timestamp = datetime.now().strftime('%Y%m%d_%H%M%S')
        self.export_model_to_csv(WeatherStation, f'weather_stations_{timestamp}.csv')
        self.export_model_to_csv(GeneralWeatherData, f'general_weather_data_{timestamp}.csv')
        self.export_model_to_csv(DetailedWeatherData, f'detailed_weather_data_{timestamp}.csv')
        self.export_model_to_csv(HeatUnitsData, f'heat_units_data_{timestamp}.csv')
        self.export_model_to_csv(ChillUnitsData, f'chill_units_data_{timestamp}.csv')
        self.export_model_to_csv(SeasonalChillUnitsData, f'seasonal_chill_units_data_{timestamp}.csv')
        self.stdout.write(self.style.SUCCESS('Data exported successfully.'))

    def export_model_to_csv(self, model, filename):
        field_names = [field.name for field in model._meta.fields]
        with open(filename, 'w', newline='') as csvfile:
            writer = csv.writer(csvfile)
            writer.writerow(field_names)
            for obj in model.objects.all():
                writer.writerow([getattr(obj, field) for field in field_names])