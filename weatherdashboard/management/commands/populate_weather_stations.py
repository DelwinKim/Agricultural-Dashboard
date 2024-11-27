from django.core.management.base import BaseCommand
from weatherdashboard.models import WeatherStation
from .scrape_data import weather_station_urls

class Command(BaseCommand):
    help = "Populate the WeatherStation model using the weather_station_urls dictionary"

    def handle(self, *args, **kwargs):
        for station_id, details in weather_station_urls.items():
            obj, created = WeatherStation.objects.get_or_create(
                station_id=station_id,
                defaults={"name": details["name"]}
            )
            if created:
                self.stdout.write(self.style.SUCCESS(f"Added station: {obj.name} (ID: {obj.station_id})"))
            else:
                self.stdout.write(self.style.WARNING(f"Station already exists: {obj.name} (ID: {obj.station_id})"))

        self.stdout.write(self.style.SUCCESS("WeatherStation model populated successfully."))
