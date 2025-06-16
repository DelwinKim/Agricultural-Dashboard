from app import db

class WeatherStation(db.Model):
    __tablename__ = 'weatherdashboard_weatherstation'
    id = db.Column(db.Integer, primary_key=True)
    station_id = db.Column(db.String(10), unique=True, index=True)
    name = db.Column(db.String(100))

    def to_dict(self):
        return {
            'id': self.id,
            'station_id': self.station_id,
            'name': self.name
        }

class GeneralWeatherData(db.Model):
    __tablename__ = 'weatherdashboard_generalweatherdata'
    id = db.Column(db.Integer, primary_key=True)
    station_id = db.Column(db.Integer, db.ForeignKey('weatherdashboard_weatherstation.id'), name='station_id')
    date = db.Column(db.Date, index=True)
    eto = db.Column(db.Float)
    max_temp = db.Column(db.Numeric(5, 0))
    min_temp = db.Column(db.Numeric(5, 0))
    min_rh = db.Column(db.Numeric(5, 0))
    solar_rad = db.Column(db.Numeric(5, 2))
    rainfall = db.Column(db.Numeric(5, 2))
    wind_4am = db.Column(db.Numeric(5, 2))
    wind_4pm = db.Column(db.Numeric(5, 2))
    battery_min = db.Column(db.Numeric(5, 2))
    battery_max = db.Column(db.Numeric(5, 2))

    def to_dict(self):
        return {
            'id': self.id,
            'station_id': self.station_id,
            'date': self.date.strftime('%Y-%m-%d') if self.date is not None else None,
            'eto': float(self.eto) if self.eto is not None else None,
            'max_temp': float(self.max_temp) if self.max_temp is not None else None,
            'min_temp': float(self.min_temp) if self.min_temp is not None else None,
            'min_rh': float(self.min_rh) if self.min_rh is not None else None,
            'solar_rad': float(self.solar_rad) if self.solar_rad is not None else None,
            'rainfall': float(self.rainfall) if self.rainfall is not None else None,
            'wind_4am': float(self.wind_4am) if self.wind_4am is not None else None,
            'wind_4pm': float(self.wind_4pm) if self.wind_4pm is not None else None,
            'battery_min': float(self.battery_min) if self.battery_min is not None else None,
            'battery_max': float(self.battery_max) if self.battery_max is not None else None
        }

class DetailedWeatherData(db.Model):
    __tablename__ = 'weatherdashboard_detailedweatherdata'
    id = db.Column(db.Integer, primary_key=True)
    station_id = db.Column(db.Integer, db.ForeignKey('weatherdashboard_weatherstation.id'), name='station_id')
    date = db.Column(db.Date, index=True)
    average_temp = db.Column(db.Numeric(5, 0))
    dew_point = db.Column(db.Integer)
    max_dewpoint = db.Column(db.Integer)
    min_dewpoint = db.Column(db.Integer)
    wind_run = db.Column(db.Numeric(7, 0))
    soil_temp = db.Column(db.Numeric(5, 0))

    def to_dict(self):
        return {
            'id': self.id,
            'station_id': self.station_id,
            'date': self.date.strftime('%Y-%m-%d') if self.date is not None else None,
            'average_temp': float(self.average_temp) if self.average_temp is not None else None,
            'dew_point': self.dew_point if self.dew_point is not None else None,
            'max_dewpoint': self.max_dewpoint if self.max_dewpoint is not None else None,
            'min_dewpoint': self.min_dewpoint if self.min_dewpoint is not None else None,
            'wind_run': float(self.wind_run) if self.wind_run is not None else None,
            'soil_temp': float(self.soil_temp) if self.soil_temp is not None else None
        }

class HeatUnitsData(db.Model):
    __tablename__ = 'weatherdashboard_heatunitsdata'
    id = db.Column(db.Integer, primary_key=True)
    station_id = db.Column(db.Integer, db.ForeignKey('weatherdashboard_weatherstation.id'), name='station_id')
    date = db.Column(db.Date, index=True)
    corn_heat_units = db.Column(db.Integer)
    cotton_heat_units = db.Column(db.Integer)
    sorghum_heat_units = db.Column(db.Integer)
    heat_units_50_degree = db.Column(db.Integer)
    heat_units_55_degree = db.Column(db.Integer)
    heat_units_60_degree = db.Column(db.Integer)

    def to_dict(self):
        return {
            'id': self.id,
            'station_id': self.station_id,
            'date': self.date.strftime('%Y-%m-%d') if self.date is not None else None,
            'corn_heat_units': self.corn_heat_units if self.corn_heat_units is not None else None,
            'cotton_heat_units': self.cotton_heat_units if self.cotton_heat_units is not None else None,
            'sorghum_heat_units': self.sorghum_heat_units if self.sorghum_heat_units is not None else None,
            'heat_units_50_degree': self.heat_units_50_degree if self.heat_units_50_degree is not None else None,
            'heat_units_55_degree': self.heat_units_55_degree if self.heat_units_55_degree is not None else None,
            'heat_units_60_degree': self.heat_units_60_degree if self.heat_units_60_degree is not None else None
        }

class ChillUnitsData(db.Model):
    __tablename__ = 'weatherdashboard_chillunitsdata'
    id = db.Column(db.Integer, primary_key=True)
    station_id = db.Column(db.Integer, db.ForeignKey('weatherdashboard_weatherstation.id'), name='station_id')
    date = db.Column(db.Date)
    method_1_hours = db.Column(db.Integer)
    method_2_hours = db.Column(db.Integer)

    def to_dict(self):
        return {
            'id': self.id,
            'station_id': self.station_id,
            'date': self.date.strftime('%Y-%m-%d') if self.date is not None else None,
            'method_1_hours': self.method_1_hours if self.method_1_hours is not None else None,
            'method_2_hours': self.method_2_hours if self.method_2_hours is not None else None
        }

class SeasonalChillUnitsData(db.Model):
    __tablename__ = 'weatherdashboard_seasonalchillunitsdata'
    id = db.Column(db.Integer, primary_key=True)
    station_id = db.Column(db.Integer, db.ForeignKey('weatherdashboard_weatherstation.id'), name='station_id')
    month = db.Column(db.String(10))
    month_num = db.Column(db.Integer, default=0)
    method_1_total = db.Column(db.Integer)
    method_2_total = db.Column(db.Integer)

    def to_dict(self):
        return {
            'id': self.id,
            'station_id': self.station_id,
            'month': self.month if self.month is not None else None,
            'month_num': self.month_num if self.month_num is not None else None,
            'method_1_total': self.method_1_total if self.method_1_total is not None else None,
            'method_2_total': self.method_2_total if self.method_2_total is not None else None
        } 