from flask import Blueprint, jsonify, request, Response
from datetime import datetime, timedelta
from zoneinfo import ZoneInfo
import logging
from app.models.weather import WeatherStation, GeneralWeatherData, DetailedWeatherData, HeatUnitsData, SeasonalChillUnitsData, ChillUnitsData
from app import db
import csv
from io import StringIO

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
        start_date = request.args.get('start_date', type=str)
        end_date = request.args.get('end_date', type=str)
        
        if not station_name:
            return jsonify({'error': 'Station name is required'}), 400
            
        station = WeatherStation.query.filter_by(name=station_name).first()
        if not station:
            return jsonify({'error': 'Station not found'}), 404
        
        logger.info(f"Fetching general weather for station {station.name}")
        query = GeneralWeatherData.query.filter_by(station_id=station.id)
        if start_date and end_date:
            query = query.filter(GeneralWeatherData.date.between(start_date, end_date))
        elif start_date:
            query = query.filter(GeneralWeatherData.date >= start_date)
        elif end_date:
            query = query.filter(GeneralWeatherData.date <= end_date)
        query = query.order_by(GeneralWeatherData.date.desc())
        total_records = query.count()
        logger.info(f"Found {total_records} records")
        
        data = query.offset(start).limit(length).all()
        data_list = [record.to_dict() for record in data if record is not None]
        return jsonify({
            'draw': request.args.get('draw', type=int),
            'recordsTotal': total_records,
            'recordsFiltered': total_records,
            'data': data_list if data_list else []
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
        start_date = request.args.get('start_date', type=str)
        end_date = request.args.get('end_date', type=str)
        
        if not station_name:
            return jsonify({'error': 'Station name is required'}), 400
            
        station = WeatherStation.query.filter_by(name=station_name).first()
        if not station:
            return jsonify({'error': 'Station not found'}), 404
        
        logger.info(f"Fetching detailed weather for station {station.name}")
        query = DetailedWeatherData.query.filter_by(station_id=station.id)
        if start_date and end_date:
            query = query.filter(DetailedWeatherData.date.between(start_date, end_date))
        elif start_date:
            query = query.filter(DetailedWeatherData.date >= start_date)
        elif end_date:
            query = query.filter(DetailedWeatherData.date <= end_date)
        query = query.order_by(DetailedWeatherData.date.desc())
        total_records = query.count()
        logger.info(f"Found {total_records} records")
        
        data = query.offset(start).limit(length).all()
        data_list = [record.to_dict() for record in data if record is not None]
        return jsonify({
            'draw': request.args.get('draw', type=int),
            'recordsTotal': total_records,
            'recordsFiltered': total_records,
            'data': data_list if data_list else []
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
        start_date = request.args.get('start_date', type=str)
        end_date = request.args.get('end_date', type=str)
        
        if not station_name:
            return jsonify({'error': 'Station name is required'}), 400
            
        station = WeatherStation.query.filter_by(name=station_name).first()
        if not station:
            return jsonify({'error': 'Station not found'}), 404
        
        logger.info(f"Fetching heat units for station {station.name}")
        query = HeatUnitsData.query.filter_by(station_id=station.id)
        if start_date and end_date:
            query = query.filter(HeatUnitsData.date.between(start_date, end_date))
        elif start_date:
            query = query.filter(HeatUnitsData.date >= start_date)
        elif end_date:
            query = query.filter(HeatUnitsData.date <= end_date)
        query = query.order_by(HeatUnitsData.date.desc())
        total_records = query.count()
        logger.info(f"Found {total_records} records")
        
        data = query.offset(start).limit(length).all()
        data_list = [record.to_dict() for record in data if record is not None]
        return jsonify({
            'draw': request.args.get('draw', type=int),
            'recordsTotal': total_records,
            'recordsFiltered': total_records,
            'data': data_list if data_list else []
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

        # Calculate totals
        total_method_1 = sum(record.method_1_total for record in data)
        total_method_2 = sum(record.method_2_total for record in data)

        return jsonify({
            'draw': request.args.get('draw', type=int),
            'recordsTotal': len(data),
            'recordsFiltered': len(data),
            'data': [record.to_dict() for record in data],
            'totals': {
                'method_1_total': total_method_1,
                'method_2_total': total_method_2
            }
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

@weather_bp.route('/download-data', methods=['POST'])
def download_data():
    try:
        data = request.get_json()
        station_id = data.get('station')
        start_date = data.get('start_date')
        end_date = data.get('end_date')
        fields = data.get('fields', [])

        if not all([station_id, start_date, end_date, fields]):
            return jsonify({'error': 'Missing required parameters'}), 400

        # Ensure 'date' is always included
        fields = ['date'] + fields

        # Dictionary to merge data by date
        merged_data = {}

        # Process GeneralWeatherData
        if any(field in fields for field in ['eto', 'max_temp', 'min_temp', 'min_rh', 'solar_rad', 'rainfall', 'wind_4am', 'wind_4pm', 'battery_min', 'battery_max']):
            general_weather_data = GeneralWeatherData.query.filter(
                GeneralWeatherData.station_id == station_id,
                GeneralWeatherData.date.between(start_date, end_date)
            ).all()
            for obj in general_weather_data:
                date = obj.date.strftime('%Y-%m-%d')
                if date not in merged_data:
                    merged_data[date] = {'date': date}
                merged_data[date].update({field: getattr(obj, field, None) for field in fields if hasattr(obj, field)})

        # Process DetailedWeatherData
        if any(field in fields for field in ['average_temp', 'dew_point', 'max_dewpoint', 'min_dewpoint', 'wind_run', 'soil_temp']):
            detailed_weather_data = DetailedWeatherData.query.filter(
                DetailedWeatherData.station_id == station_id,
                DetailedWeatherData.date.between(start_date, end_date)
            ).all()
            for obj in detailed_weather_data:
                date = obj.date.strftime('%Y-%m-%d')
                if date not in merged_data:
                    merged_data[date] = {'date': date}
                merged_data[date].update({field: getattr(obj, field, None) for field in fields if hasattr(obj, field)})

        # Process HeatUnitsData
        if any(field in fields for field in ['corn_heat_units', 'cotton_heat_units', 'sorghum_heat_units', 'heat_units_50_degree', 'heat_units_55_degree', 'heat_units_60_degree']):
            heat_units_data = HeatUnitsData.query.filter(
                HeatUnitsData.station_id == station_id,
                HeatUnitsData.date.between(start_date, end_date)
            ).all()
            for obj in heat_units_data:
                date = obj.date.strftime('%Y-%m-%d')
                if date not in merged_data:
                    merged_data[date] = {'date': date}
                merged_data[date].update({field: getattr(obj, field, None) for field in fields if hasattr(obj, field)})

        # Convert merged data to a list of rows
        merged_rows = [merged_data[date] for date in sorted(merged_data.keys())]

        # Handle cases where no data is found
        if not merged_rows:
            return jsonify({'error': 'No data found for the selected fields and date range'}), 400

        # Create CSV response
        output = StringIO()
        writer = csv.writer(output)
        writer.writerow(fields)  # Write header row
        for row in merged_rows:
            writer.writerow([row.get(field, 'N/A') for field in fields])  # Fill missing fields with 'N/A'

        # Prepare the response
        output.seek(0)
        return Response(
            output.getvalue(),
            mimetype='text/csv',
            headers={
                'Content-Disposition': f'attachment; filename=weather_data_{station_id}_{start_date}_to_{end_date}.csv'
            }
        )

    except Exception as e:
        logger.error(f"Error downloading data: {str(e)}")
        return jsonify({'error': str(e)}), 500

@weather_bp.route('/weather/chart-data/', methods=['GET'])
def get_chart_data():
    try:
        station_name = request.args.get('station_name', type=str)
        start = request.args.get('start', default=0, type=int)
        length = request.args.get('length', default=30, type=int)
        start_date = request.args.get('start_date', type=str)
        end_date = request.args.get('end_date', type=str)
        if not station_name:
            return jsonify({'error': 'Station name is required'}), 400
        station = WeatherStation.query.filter_by(name=station_name).first()
        if not station:
            return jsonify({'error': 'Station not found'}), 404
        # Build date filter for any combination of start_date/end_date
        date_filter = []
        if start_date and end_date:
            date_filter = [GeneralWeatherData.date.between(start_date, end_date)]
        elif start_date:
            date_filter = [GeneralWeatherData.date >= start_date]
        elif end_date:
            date_filter = [GeneralWeatherData.date <= end_date]
        # Get general weather data
        general_query = GeneralWeatherData.query.filter_by(station_id=station.id)
        if date_filter:
            general_query = general_query.filter(*date_filter)
        general_query = general_query.order_by(GeneralWeatherData.date.desc())
        general_data = general_query.offset(start).limit(length).all()
        # Get detailed weather data
        detailed_query = DetailedWeatherData.query.filter_by(station_id=station.id)
        if date_filter:
            detailed_query = detailed_query.filter(*date_filter)
        detailed_query = detailed_query.order_by(DetailedWeatherData.date.desc())
        detailed_data = {d.date: d for d in detailed_query.offset(start).limit(length).all()}
        # Get heat units data
        heatunits_query = HeatUnitsData.query.filter_by(station_id=station.id)
        if date_filter:
            heatunits_query = heatunits_query.filter(*date_filter)
        heatunits_query = heatunits_query.order_by(HeatUnitsData.date.desc())
        heatunits_data = {h.date: h for h in heatunits_query.offset(start).limit(length).all()}
        # Merge data by date
        chart_data = []
        # Get all dates in the range (from min to max date in any table)
        all_dates_set = set([g.date for g in GeneralWeatherData.query.filter_by(station_id=station.id)])
        all_dates_set.update([d.date for d in DetailedWeatherData.query.filter_by(station_id=station.id)])
        all_dates_set.update([h.date for h in HeatUnitsData.query.filter_by(station_id=station.id)])
        if start_date:
            start_dt = datetime.strptime(start_date, '%Y-%m-%d').date()
        else:
            start_dt = min(all_dates_set) if all_dates_set else None
        if end_date:
            end_dt = datetime.strptime(end_date, '%Y-%m-%d').date()
        else:
            end_dt = max(all_dates_set) if all_dates_set else None
        if not start_dt or not end_dt:
            return jsonify([])
        # Generate all dates in the range (most recent first)
        all_dates = [start_dt + timedelta(days=i) for i in range((end_dt - start_dt).days + 1)]
        all_dates = list(reversed(all_dates))  # Most recent first
        # Build dicts for fast lookup
        general_dict = {g.date: g for g in GeneralWeatherData.query.filter_by(station_id=station.id)}
        detailed_dict = {d.date: d for d in DetailedWeatherData.query.filter_by(station_id=station.id)}
        heatunits_dict = {h.date: h for h in HeatUnitsData.query.filter_by(station_id=station.id)}
        # Merge data by date, always include all fields (set missing to None)
        for date in all_dates[start:start+length]:
            row = {'date': date.strftime('%b %d, %Y - %a')}
            g = general_dict.get(date)
            d = detailed_dict.get(date)
            h = heatunits_dict.get(date)
            if g:
                row.update(g.to_dict())
            if d:
                row.update(d.to_dict())
            else:
                row.setdefault('average_temp', None)
                row.setdefault('dew_point', None)
                row.setdefault('max_dewpoint', None)
                row.setdefault('min_dewpoint', None)
                row.setdefault('wind_run', None)
                row.setdefault('soil_temp', None)
            if h:
                row.update(h.to_dict())
            else:
                row.setdefault('corn_heat_units', None)
                row.setdefault('cotton_heat_units', None)
                row.setdefault('sorghum_heat_units', None)
                row.setdefault('heat_units_50_degree', None)
                row.setdefault('heat_units_55_degree', None)
                row.setdefault('heat_units_60_degree', None)
            chart_data.append(row)
        return jsonify(chart_data)
    except Exception as e:
        logger.error(f"Error fetching chart data: {str(e)}")
        return jsonify({'error': str(e)}), 500

@weather_bp.route('/ping', methods=['GET'])
def ping():
    return jsonify({'status': 'ok', 'message': 'pong'}), 200
