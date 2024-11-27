from django.core.management.base import BaseCommand
from weatherdashboard.utils.web_scraper import scrape_all_tables
from weatherdashboard.save_functions import (
    save_general_weather,
    save_detailed_weather,
    save_heat_units,
    save_chill_units,
)

weather_station_urls = {
    "322": {
        "name": "Corpus Christi Agrilife",
        "url": "https://texaset.tamu.edu/DataSummary/Daily/322?daysInSummary=14"
    },
    "327": {
        "name": "Corpus Christi North",
        "url": "https://texaset.tamu.edu/DataSummary/Daily/327?daysInSummary=14"
    },
    "328": {
        "name": "Corpus Christi South",
        "url": "https://texaset.tamu.edu/DataSummary/Daily/328?daysInSummary=14"
    },
    "149": {
        "name": "Dickinson",
        "url": "https://texaset.tamu.edu/DataSummary/Daily/149?daysInSummary=14"
    },
    "324": {
        "name": "Driscoll",
        "url": "https://texaset.tamu.edu/DataSummary/Daily/324?daysInSummary=14"
    },
    "319": {
        "name": "Freer",
        "url": "https://texaset.tamu.edu/DataSummary/Daily/319?daysInSummary=14"
    },
    "193": {
        "name": "Garwood",
        "url": "https://texaset.tamu.edu/DataSummary/Daily/193?daysInSummary=14"
    },
    "198": {
        "name": "Goliad",
        "url": "https://texaset.tamu.edu/DataSummary/Daily/198?daysInSummary=14"
    },
    "150": {
        "name": "Houston",
        "url": "https://texaset.tamu.edu/DataSummary/Daily/150?daysInSummary=14"
    },
    "326": {
        "name": "Houston North",
        "url": "https://texaset.tamu.edu/DataSummary/Daily/326?daysInSummary=14"
    },
    "201": {
        "name": "Kingsville",
        "url": "https://texaset.tamu.edu/DataSummary/Daily/201?daysInSummary=14"
    },
    "160": {
        "name": "Memorial Village",
        "url": "https://texaset.tamu.edu/DataSummary/Daily/160?daysInSummary=14"
    },
    "188": {
        "name": "Refugio",
        "url": "https://texaset.tamu.edu/DataSummary/Daily/188?daysInSummary=14"
    },
    "161": {
        "name": "Richmond North",
        "url": "https://texaset.tamu.edu/DataSummary/Daily/161?daysInSummary=14"
    },
    "151": {
        "name": "Richmond South",
        "url": "https://texaset.tamu.edu/DataSummary/Daily/151?daysInSummary=14"
    },
    "152": {
        "name": "Spring",
        "url": "https://texaset.tamu.edu/DataSummary/Daily/152?daysInSummary=14"
    },
    "316": {
        "name": "Victoria County West",
        "url": "https://texaset.tamu.edu/DataSummary/Daily/316?daysInSummary=14"
    },
}

class Command(BaseCommand):
    help = "Scrape weather data and save it to the database"

    def handle(self, *args, **kwargs):

        for station_id, details in weather_station_urls.items():
            station_name = details["name"]
            url = details["url"]

            self.stdout.write(f"Scraping data for station {station_name} (ID: {station_id})...")
            station_data = scrape_all_tables(url)

            # Save each table's data
            save_general_weather(station_data["general_weather"], station_id)
            save_detailed_weather(station_data["detailed_weather"], station_id)
            save_heat_units(station_data["heat_units"], station_id)
            save_chill_units(station_data["chill_units"], station_id)

            self.stdout.write(f"Data for station {station_name} (ID: {station_id}) saved successfully.")