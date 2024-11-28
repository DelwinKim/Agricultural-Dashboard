from django.apps import AppConfig


class WeatherdashboardConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'weatherdashboard'

from django.apps import AppConfig


class WeatherdashboardConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'weatherdashboard'

    def ready(self):
        from .dynamic_models import create_station_models
        from .management.commands.scrape_data import weather_station_urls

        for details in weather_station_urls.values():
            create_station_models(details["name"])