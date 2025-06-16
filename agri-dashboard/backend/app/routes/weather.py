from flask import Blueprint, jsonify, request
from datetime import datetime, timedelta
from zoneinfo import ZoneInfo
import logging
from app.models.weather import WeatherStation, GeneralWeatherData, DetailedWeatherData, HeatUnitsData, SeasonalChillUnitsData, ChillUnitsData
from app import db

# Configure logging
logger = logging.getLogger(__name__)

weather_bp = Blueprint('weather', __name__)

@weather_bp.route('/stations', methods=['GET'])
def get_stations():
    try:
        logger.info("Fetching all stations")
        stations = WeatherStation.query.all()
        logger.info(f"Found {len(stations)} stations")
        return jsonify([station.to_dict() for station in stations])
    except Exception as e:
        logger.error(f"Error fetching stations: {str(e)}")
        return jsonify({'error': str(e)}), 500

@weather_bp.route('/weather/general/', methods=['GET'])
def get_general_weather_table():
    try:
        start = request.args.get('start', default=0, type=int)
        length = request.args.get('length', default=7, type=int)
        station_name = request.args.get('station_name', type=str)
        
        if not station_name:
            return jsonify({'error': 'Station name is required'}), 400
            
        station = WeatherStation.query.filter_by(name=station_name).first()
        if not station:
            return jsonify({'error': 'Station not found'}), 404
        
        logger.info(f"Fetching general weather for station {station.name}")
        query = GeneralWeatherData.query.filter_by(station_id=station.id).order_by(GeneralWeatherData.date.desc())
        total_records = query.count()
        logger.info(f"Found {total_records} records")
        
        data = query.offset(start).limit(length).all()
        return jsonify({
            'draw': request.args.get('draw', type=int),
            'recordsTotal': total_records,
            'recordsFiltered': total_records,
            'data': [record.to_dict() for record in data]
        })
    except Exception as e:
        logger.error(f"Error fetching general weather: {str(e)}")
        return jsonify({'error': str(e)}), 500

@weather_bp.route('/weather/detailed/', methods=['GET'])
def get_detailed_weather_table():
    try:
        start = request.args.get('start', default=0, type=int)
        length = request.args.get('length', default=7, type=int)
        station_name = request.args.get('station_name', type=str)
        
        if not station_name:
            return jsonify({'error': 'Station name is required'}), 400
            
        station = WeatherStation.query.filter_by(name=station_name).first()
        if not station:
            return jsonify({'error': 'Station not found'}), 404
        
        logger.info(f"Fetching detailed weather for station {station.name}")
        query = DetailedWeatherData.query.filter_by(station_id=station.id).order_by(DetailedWeatherData.date.desc())
        total_records = query.count()
        logger.info(f"Found {total_records} records")
        
        data = query.offset(start).limit(length).all()
        return jsonify({
            'draw': request.args.get('draw', type=int),
            'recordsTotal': total_records,
            'recordsFiltered': total_records,
            'data': [record.to_dict() for record in data]
        })
    except Exception as e:
        logger.error(f"Error fetching detailed weather: {str(e)}")
        return jsonify({'error': str(e)}), 500

@weather_bp.route('/weather/heat-units/', methods=['GET'])
def get_heat_units_table():
    try:
        start = request.args.get('start', default=0, type=int)
        length = request.args.get('length', default=7, type=int)
        station_name = request.args.get('station_name', type=str)
        
        if not station_name:
            return jsonify({'error': 'Station name is required'}), 400
            
        station = WeatherStation.query.filter_by(name=station_name).first()
        if not station:
            return jsonify({'error': 'Station not found'}), 404
        
        logger.info(f"Fetching heat units for station {station.name}")
        query = HeatUnitsData.query.filter_by(station_id=station.id).order_by(HeatUnitsData.date.desc())
        total_records = query.count()
        logger.info(f"Found {total_records} records")
        
        data = query.offset(start).limit(length).all()
        return jsonify({
            'draw': request.args.get('draw', type=int),
            'recordsTotal': total_records,
            'recordsFiltered': total_records,
            'data': [record.to_dict() for record in data]
        })
    except Exception as e:
        logger.error(f"Error fetching heat units: {str(e)}")
        return jsonify({'error': str(e)}), 500

@weather_bp.route('/weather/chill-units/', methods=['GET'])
def get_chill_units_table():
    try:
        station_name = request.args.get('station_name', type=str)
        
        if not station_name:
            return jsonify({'error': 'Station name is required'}), 400
            
        station = WeatherStation.query.filter_by(name=station_name).first()
        if not station:
            return jsonify({'error': 'Station not found'}), 404
        
        logger.info(f"Fetching chill units for station {station.name}")
        data = SeasonalChillUnitsData.query.filter_by(station_id=station.id).order_by(SeasonalChillUnitsData.month_num.desc()).all()
        logger.info(f"Found {len(data)} records")
        return jsonify({
            'draw': request.args.get('draw', type=int),
            'recordsTotal': len(data),
            'recordsFiltered': len(data),
            'data': [record.to_dict() for record in data]
        })
    except Exception as e:
        logger.error(f"Error fetching chill units: {str(e)}")
        return jsonify({'error': str(e)}), 500

@weather_bp.route('/recent-weather', methods=['GET'])
def get_recent_weather():
    try:
        central = ZoneInfo("America/Chicago")
        now_central = datetime.now(central)
        yesterday_central = (now_central - timedelta(days=1)).date()
        two_days_ago = (now_central - timedelta(days=2)).date()
        
        logger.info("Fetching recent weather data")
        recent_weather_data = {}
        stations = WeatherStation.query.all()
        logger.info(f"Found {len(stations)} stations")
        
        for station in stations:
            recent_weather = GeneralWeatherData.query.filter_by(station_id=station.id)\
                .filter(GeneralWeatherData.date.in_([yesterday_central, two_days_ago]))\
                .order_by(GeneralWeatherData.date.desc())\
                .first()
            
            if recent_weather:
                recent_weather_data[station.name] = recent_weather.to_dict()
        
        logger.info(f"Found recent data for {len(recent_weather_data)} stations")
        return jsonify(recent_weather_data)
    except Exception as e:
        logger.error(f"Error fetching recent weather: {str(e)}")
        return jsonify({'error': str(e)}), 500 