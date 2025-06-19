from app import db
from app.models.weather import (
    WeatherStation,
    GeneralWeatherData,
    DetailedWeatherData,
    HeatUnitsData,
    # ChillUnitsData,
    SeasonalChillUnitsData,
)


def _get_station_db_id(station_id: str) -> int:
    station = WeatherStation.query.filter_by(station_id=station_id).first()
    if not station:
        raise ValueError(f"Station {station_id} not found")
    return station.id


def save_general_weather(data, station_id):
    station_db_id = _get_station_db_id(station_id)
    for row in data:
        record = GeneralWeatherData.query.filter_by(
            station_id=station_db_id, date=row[0]
        ).first()
        if not record:
            record = GeneralWeatherData(
                station_id=station_db_id,
                date=row[0],
            )
            db.session.add(record)
        record.eto = row[1]
        record.max_temp = row[2]
        record.min_temp = row[3]
        record.min_rh = row[4]
        record.solar_rad = row[5]
        record.rainfall = row[6]
        record.wind_4am = row[7]
        record.wind_4pm = row[8]
        record.battery_min = row[9]
        record.battery_max = row[10]
    db.session.commit()


def save_detailed_weather(data, station_id):
    station_db_id = _get_station_db_id(station_id)
    for row in data:
        record = DetailedWeatherData.query.filter_by(
            station_id=station_db_id, date=row[0]
        ).first()
        if not record:
            record = DetailedWeatherData(
                station_id=station_db_id,
                date=row[0],
            )
            db.session.add(record)
        record.average_temp = row[1]
        record.dew_point = row[2]
        record.max_dewpoint = row[3]
        record.min_dewpoint = row[4]
        record.wind_run = row[5]
        record.soil_temp = row[6]
    db.session.commit()


def save_heat_units(data, station_id):
    station_db_id = _get_station_db_id(station_id)
    for row in data:
        record = HeatUnitsData.query.filter_by(
            station_id=station_db_id, date=row[0]
        ).first()
        if not record:
            record = HeatUnitsData(
                station_id=station_db_id,
                date=row[0],
            )
            db.session.add(record)
        record.corn_heat_units = row[1]
        record.cotton_heat_units = row[2]
        record.sorghum_heat_units = row[3]
        record.heat_units_50_degree = row[4]
        record.heat_units_55_degree = row[5]
        record.heat_units_60_degree = row[6]
    db.session.commit()


# def save_chill_units(data, station_id):
#     station_db_id = _get_station_db_id(station_id)
#     for row in data:
#         record = ChillUnitsData.query.filter_by(
#             station_id=station_db_id, date=row[0]
#         ).first()
#         if not record:
#             record = ChillUnitsData(
#                 station_id=station_db_id,
#                 date=row[0],
#             )
#             db.session.add(record)
#         record.method_1_hours = row[1]
#         record.method_2_hours = row[2]
#     db.session.commit()


def save_seasonal_chill_units(data, station_id):
    station_db_id = _get_station_db_id(station_id)
    for row in data:
        record = SeasonalChillUnitsData.query.filter_by(
            station_id=station_db_id, month=row[0]
        ).first()
        if not record:
            record = SeasonalChillUnitsData(
                station_id=station_db_id,
                month=row[0],
            )
            db.session.add(record)
        record.month_num = row[1]
        record.method_1_total = row[2]
        record.method_2_total = row[3]
    db.session.commit()
