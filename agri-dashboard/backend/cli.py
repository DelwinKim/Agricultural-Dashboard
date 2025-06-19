import csv
from datetime import datetime
import os
import math
import click
from flask import Flask
from sqlalchemy import func
from app import create_app, db
from app.models.weather import (
    WeatherStation,
    GeneralWeatherData,
    DetailedWeatherData,
    HeatUnitsData,
    # ChillUnitsData,
    SeasonalChillUnitsData,
)
from app.utils.web_scraper import scrape_all_tables
from app.utils.save_functions import (
    save_general_weather,
    save_detailed_weather,
    save_heat_units,
    # save_chill_units,
    save_seasonal_chill_units,
)

app = create_app()

# Mapping of station ids to names and URLs
weather_station_urls = {
    "322": {"name": "Corpus Christi Agrilife", "url": "https://texaset.tamu.edu/DataSummary/Daily/322?daysInSummary=14"},
    "327": {"name": "Corpus Christi North", "url": "https://texaset.tamu.edu/DataSummary/Daily/327?daysInSummary=14"},
    "328": {"name": "Corpus Christi South", "url": "https://texaset.tamu.edu/DataSummary/Daily/328?daysInSummary=14"},
    "149": {"name": "Dickinson", "url": "https://texaset.tamu.edu/DataSummary/Daily/149?daysInSummary=14"},
    "324": {"name": "Driscoll", "url": "https://texaset.tamu.edu/DataSummary/Daily/324?daysInSummary=14"},
    "319": {"name": "Freer", "url": "https://texaset.tamu.edu/DataSummary/Daily/319?daysInSummary=14"},
    "193": {"name": "Garwood", "url": "https://texaset.tamu.edu/DataSummary/Daily/193?daysInSummary=14"},
    "198": {"name": "Goliad", "url": "https://texaset.tamu.edu/DataSummary/Daily/198?daysInSummary=14"},
    "150": {"name": "Houston", "url": "https://texaset.tamu.edu/DataSummary/Daily/150?daysInSummary=14"},
    "326": {"name": "Houston North", "url": "https://texaset.tamu.edu/DataSummary/Daily/326?daysInSummary=14"},
    "201": {"name": "Kingsville", "url": "https://texaset.tamu.edu/DataSummary/Daily/201?daysInSummary=14"},
    "160": {"name": "Memorial Village", "url": "https://texaset.tamu.edu/DataSummary/Daily/160?daysInSummary=14"},
    "188": {"name": "Refugio", "url": "https://texaset.tamu.edu/DataSummary/Daily/188?daysInSummary=14"},
    "161": {"name": "Richmond North", "url": "https://texaset.tamu.edu/DataSummary/Daily/161?daysInSummary=14"},
    "151": {"name": "Richmond South", "url": "https://texaset.tamu.edu/DataSummary/Daily/151?daysInSummary=14"},
    "152": {"name": "Spring", "url": "https://texaset.tamu.edu/DataSummary/Daily/152?daysInSummary=14"},
    "316": {"name": "Victoria County West", "url": "https://texaset.tamu.edu/DataSummary/Daily/316?daysInSummary=14"},
}


def with_app_context(f):
    """Run the function within the Flask application context."""
    def wrapper(*args, **kwargs):
        with app.app_context():
            return f(*args, **kwargs)
    return wrapper


@app.cli.command("populate_stations")
@with_app_context
def populate_stations():
    """Populate the WeatherStation table."""
    for station_id, details in weather_station_urls.items():
        station = WeatherStation.query.filter_by(station_id=station_id).first()
        if not station:
            station = WeatherStation(station_id=station_id, name=details["name"])
            db.session.add(station)
            click.echo(f"Added station {station.name} ({station.station_id})")
        else:
            click.echo(f"Station {station.name} ({station.station_id}) already exists")
    db.session.commit()
    click.echo("Weather stations populated.")


@app.cli.command("scrape_data")
@with_app_context
def scrape_data_cmd():
    """Scrape weather data for all stations."""
    for station_id, details in weather_station_urls.items():
        click.echo(f"Scraping data for station {details['name']} (ID: {station_id})...")

        station_data = scrape_all_tables(details["url"], station_id)
        save_general_weather(station_data["general_weather"], station_id)
        save_detailed_weather(station_data["detailed_weather"], station_id)
        save_heat_units(station_data["heat_units"], station_id)
        save_seasonal_chill_units(station_data["seasonal_chill_units"], station_id)
        
        click.echo(f"Data for station {details['name']} (ID: {station_id}) saved successfully.")


@app.cli.command("export_data")
@with_app_context
def export_data_cmd():
    """Export all model data to CSV files."""
    timestamp = datetime.now().strftime('%Y%m%d_%H%M%S')
    export_model(WeatherStation, f'weather_stations_{timestamp}.csv')
    export_model(GeneralWeatherData, f'general_weather_data_{timestamp}.csv')
    export_model(DetailedWeatherData, f'detailed_weather_data_{timestamp}.csv')
    export_model(HeatUnitsData, f'heat_units_data_{timestamp}.csv')
    # export_model(ChillUnitsData, f'chill_units_data_{timestamp}.csv')
    export_model(SeasonalChillUnitsData, f'seasonal_chill_units_data_{timestamp}.csv')
    click.echo("Data exported successfully")


def export_model(model, filename):
    field_names = [column.name for column in model.__table__.columns]
    with open(filename, 'w', newline='') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(field_names)
        for obj in model.query.all():
            writer.writerow([getattr(obj, field) for field in field_names])


@app.cli.command("delete_all_data")
@with_app_context
def delete_all_data_cmd():
    """Delete all records from all tables."""
    for model in [WeatherStation, GeneralWeatherData, DetailedWeatherData, HeatUnitsData, '''ChillUnitsData''', SeasonalChillUnitsData]:
        num = model.query.delete()
        click.echo(f"Deleted {num} rows from {model.__tablename__}")
    db.session.commit()
    click.echo("All data deleted")


@app.cli.command("update_weather_data")
@click.argument("file_path")
@with_app_context
def update_weather_data_cmd(file_path):
    """Read a .dat file and update weather data."""
    if not os.path.exists(file_path):
        click.echo(f"File {file_path} does not exist")
        return

    last_general_date = db.session.query(func.max(GeneralWeatherData.date)).scalar()
    last_heat_date = db.session.query(func.max(HeatUnitsData.date)).scalar()
    last_detailed_date = db.session.query(func.max(DetailedWeatherData.date)).scalar()

    with open(file_path, 'r') as file:
        lines = file.readlines()[4:]
        for line in lines:
            data = line.split(',')
            date_str = data[0].strip('"').split()[0]
            date = datetime.strptime(date_str, "%m/%d/%Y").date()

            if last_general_date is None or date > last_general_date:
                record = GeneralWeatherData(date=date,
                                            eto=0,
                                            max_temp=float(data[11]),
                                            min_temp=float(data[13]),
                                            min_rh=float(data[23]),
                                            solar_rad=float(data[4]),
                                            rainfall=float(data[40]),
                                            wind_4am=float(data[35]),
                                            wind_4pm=float(data[36]),
                                            battery_min=data[2],
                                            battery_max=13.5)
                db.session.add(record)

            if last_heat_date is None or date > last_heat_date:
                record = HeatUnitsData(date=date,
                                       corn_heat_units=calculate_corn_heat_units(float(data[11]), float(data[13])),
                                       cotton_heat_units=calculate_cotton_heat_units(float(data[11]), float(data[13])),
                                       sorghum_heat_units=calculate_sorghum_heat_units(float(data[11]), float(data[13])),
                                       heat_units_50_degree=calculate_heat_units_for_base_temp(float(data[11]), float(data[13]), 50),
                                       heat_units_55_degree=calculate_heat_units_for_base_temp(float(data[11]), float(data[13]), 55),
                                       heat_units_60_degree=calculate_heat_units_for_base_temp(float(data[11]), float(data[13]), 60))
                db.session.add(record)

            if last_detailed_date is None or date > last_detailed_date:
                average_temp = float(data[10])
                max_temp = float(data[11])
                min_temp = float(data[13])
                average_rh = float(data[20])
                max_rh = float(data[21])
                min_rh = float(data[23])
                record = DetailedWeatherData(date=date,
                                             average_temp=average_temp,
                                             dew_point=calculate_dewpoint(average_rh, average_temp),
                                             max_dewpoint=calculate_dewpoint(max_rh, max_temp),
                                             min_dewpoint=calculate_dewpoint(min_rh, min_temp),
                                             wind_run=float(data[35]) * 2.23694 * 24,
                                             soil_temp=float(data[47]))
                db.session.add(record)

    db.session.commit()
    click.echo("Weather data updated")


def calculate_heat_units_for_base_temp(max_temp, min_temp, base_temp):
    gdd = int(((max_temp + min_temp) / 2) - base_temp)
    return max(0, gdd)


def calculate_corn_heat_units(max_temp, min_temp):
    if max_temp > 86:
        max_temp = 86
    if min_temp < 50:
        min_temp = 50
    gdd = int(((max_temp + min_temp) / 2) - 50)
    return max(0, gdd)


def calculate_cotton_heat_units(max_temp, min_temp):
    gdd = int(((max_temp + min_temp) / 2) - 60)
    return max(0, gdd)


def calculate_sorghum_heat_units(max_temp, min_temp):
    if max_temp > 100:
        max_temp = 100
    if min_temp < 50:
        min_temp = 50
    gdd = int(((max_temp + min_temp) / 2) - 55)
    return max(0, gdd)


def calculate_dewpoint(rh, temp):
    a = 17.27
    b = 237.7
    es = 6.112 * math.exp((a * temp) / (b + temp))
    ea = (rh / 100.0) * es
    dewpoint = (b * math.log(ea / 6.112)) / (a - math.log(ea / 6.112))
    return int(dewpoint)

if __name__ == "__main__":
    app.cli()  # pragma: no cover