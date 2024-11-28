from django.db import models

class WeatherStation(models.Model):
    station_id = models.CharField(max_length=10, unique=True, db_index=True)  
    name = models.CharField(max_length=100)  

    def __str__(self):
        return f"{self.name} (ID: {self.station_id})"
    
class BaseGeneralWeatherData(models.Model):
    date = models.DateField(db_index=True)
    eto = models.FloatField()
    max_temp = models.DecimalField(max_digits=5, decimal_places=0)
    min_temp = models.DecimalField(max_digits=5, decimal_places=0)
    min_rh = models.DecimalField(max_digits=5, decimal_places=0)
    solar_rad = models.DecimalField(max_digits=5, decimal_places=2)
    rainfall = models.DecimalField(max_digits=5, decimal_places=2)
    wind_4am = models.DecimalField(max_digits=5, decimal_places=2)
    wind_4pm = models.DecimalField(max_digits=5, decimal_places=2)
    battery_min = models.DecimalField(max_digits=5, decimal_places=2)
    battery_max = models.DecimalField(max_digits=5, decimal_places=2)

    class Meta:
        abstract = True


class BaseDetailedWeatherData(models.Model):
    date = models.DateField(db_index=True)
    average_temp = models.DecimalField(max_digits=5, decimal_places=0)
    dew_point = models.IntegerField()
    max_dewpoint = models.IntegerField()
    min_dewpoint = models.IntegerField()
    wind_run = models.DecimalField(max_digits=7, decimal_places=0)
    soil_temp = models.DecimalField(max_digits=5, decimal_places=0)

    class Meta:
        abstract = True


class BaseHeatUnitsData(models.Model):
    date = models.DateField(db_index=True)
    corn_heat_units = models.IntegerField()
    cotton_heat_units = models.IntegerField()
    sorghum_heat_units = models.IntegerField()
    heat_units_50_degree = models.IntegerField()
    heat_units_55_degree = models.IntegerField()
    heat_units_60_degree = models.IntegerField()

    class Meta:
        abstract = True


class BaseChillUnitsData(models.Model):
    date = models.DateField()
    method_1_hours = models.IntegerField()
    method_2_hours = models.IntegerField()

    class Meta:
        abstract = True


class BaseSeasonalChillUnitsData(models.Model):
    month = models.CharField(max_length=10)
    method_1_total = models.IntegerField()
    method_2_total = models.IntegerField()

    class Meta:
        abstract = True