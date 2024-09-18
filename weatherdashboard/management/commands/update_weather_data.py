from datetime import datetime
from django.core.management.base import BaseCommand
from weatherdashboard.models import GeneralWeatherData, DetailedWeatherData, HeatUnitsData, ChillUnitsData, SeasonalChillUnitsData
import math
import os

def calculate_heat_units_for_base_temp(max_temp, min_temp, base_temp):
    """Calculate heat units given certain base temperature."""
    gdd = int(((max_temp + min_temp) / 2) - base_temp)
    return max(0, gdd)  # Ensure GDD is not negative

def calculate_corn_heat_units(max_temp, min_temp):
    if max_temp > 86:
        max_temp = 86
    if min_temp < 50:
        min_temp = 50
    # Calculate Growing Degree Days (GDD)
    gdd = int(((max_temp + min_temp) / 2) - 50)
    return max(0, gdd)  # Ensure GDD is not negative   

def calculate_cotton_heat_units(max_temp, min_temp):
    gdd = int(((max_temp + min_temp) / 2) - 60)
    return max(0, gdd) 

def calculate_sorghum_heat_units(max_temp, min_temp): 
    if max_temp > 100:
        max_temp = 100
    if min_temp < 50:
        min_temp = 50
    # Calculate Growing Degree Days (GDD)
    # ask about the correct formula for sorghum
    gdd = int(((max_temp + min_temp) / 2) - 55) 
    return max(0, gdd)  # Ensure GDD is not negative   

def calculate_dewpoint(RH, T):
    # Constants for the Magnus formula
    a = 17.27
    b = 237.7
    
    # Calculate saturation vapor pressure (Es) using Tetens formula
    Es = 6.112 * math.exp((a * T) / (b + T))
    
    # Calculate actual vapor pressure (Ea)
    Ea = (RH / 100.0) * Es
    
    # Calculate dewpoint
    dewpoint = (b * math.log(Ea / 6.112)) / (a - math.log(Ea / 6.112))
    return int(dewpoint)


class Command(BaseCommand):
    help = 'Read the .dat file and update weather data in the database'

    def handle(self, *args, **kwargs):
        file_path = "C:/Users/delwin/OneDrive - The University of Texas at Austin/AgrilifeProject/CCstation_Daily (has been modified).dat"
        if not os.path.exists(file_path):
            self.stdout.write(self.style.ERROR(f'File {file_path} does not exist'))
            return
        # Fetch the last date from the database
        try:
            last_general_date = GeneralWeatherData.objects.latest('date').date
        except GeneralWeatherData.DoesNotExist:
            last_general_date = None
        try:
            last_heat_date = HeatUnitsData.objects.latest('date').date
        except HeatUnitsData.DoesNotExist:
            last_heat_date = None
        try:
            last_detailed_date = DetailedWeatherData.objects.latest('date').date
        except DetailedWeatherData.DoesNotExist:
            last_detailed_date = None
        try:
            with open(file_path, 'r') as file:
                lines = file.readlines()
                for line in lines[4:]:  # skip header
                    data = line.split(",")
                    # date_str = data[0].split()[0].strip('"') old parsing code, might revert if next line doesn't work
                    date_str = data[0].strip('"').split()[0] # Remove quotes and time
                    date = datetime.strptime(date_str, "%m/%d/%Y").date()

                    #For General Weather Data Model
                    if last_general_date is None or date > last_general_date:
                        battery_min = data[2]
                        battery_max = 13.5  # Placeholder
                        eto = 0  # Placeholder for demonstration
                        max_temp = float(data[11])
                        min_temp = float(data[13])
                        min_rh = float(data[23])
                        solar_rad = float(data[4])
                        rainfall = float(data[40])
                        wind_4am = float(data[35])
                        wind_4pm = float(data[36])

                        # Add the new data row to the general weather database
                        GeneralWeatherData.objects.create(
                            date=date,
                            eto=eto,
                            max_temp=max_temp,
                            min_temp=min_temp,
                            min_rh=min_rh,
                            solar_rad=solar_rad,
                            rainfall=rainfall,
                            wind_4am=wind_4am,
                            wind_4pm=wind_4pm,
                            battery_min=battery_min,
                            battery_max=battery_max,
                        )

                    #For Heat Unit Data Model
                    if last_heat_date is None or date > last_heat_date:
                        max_temp = float(data[11])
                        min_temp = float(data[13])
                        corn_heat_units = calculate_corn_heat_units(max_temp, min_temp)
                        cotton_heat_units = calculate_cotton_heat_units(max_temp, min_temp)
                        sorghum_heat_units = calculate_sorghum_heat_units(max_temp, min_temp)
                        heat_units_50 = calculate_heat_units_for_base_temp(max_temp, min_temp, 50)
                        heat_units_55 = calculate_heat_units_for_base_temp(max_temp, min_temp, 55)
                        heat_units_60 = calculate_heat_units_for_base_temp(max_temp, min_temp, 60)

                        HeatUnitsData.objects.create(
                            date=date,
                            corn_heat_units=corn_heat_units,
                            cotton_heat_units=cotton_heat_units,
                            sorghum_heat_units=sorghum_heat_units,
                            heat_units_50_degree=heat_units_50,
                            heat_units_55_degree=heat_units_55,
                            heat_units_60_degree=heat_units_60,
                        )

                    # #For Detailed Weather Data Model
                    if last_detailed_date is None or date > last_detailed_date:
                        average_temp = float(data[10])
                        max_temp = float(data[11])
                        min_temp = float(data[13])
                        average_rh = float(data[20])
                        max_rh = float(data[21])
                        min_rh = float(data[23])
                        dew_point = calculate_dewpoint(average_rh, average_temp)
                        min_dewpoint = calculate_dewpoint(min_rh, min_temp)
                        max_dewpoint = calculate_dewpoint(max_rh, max_temp)
                        wind_run = float(data[35]) * 2.23694 * 24
                        soil_temp = float(data[47])


                        # Add the new data row to the general weather database
                        DetailedWeatherData.objects.create(
                            date=date,
                            average_temp=average_temp,
                            dew_point=dew_point,
                            max_dewpoint=max_dewpoint,
                            min_dewpoint=min_dewpoint,
                            wind_run=wind_run,
                            soil_temp=soil_temp,
                        )



            self.stdout.write(self.style.SUCCESS('Successfully added all weather data'))
        except Exception as e:
                    self.stdout.write(self.style.ERROR(f'Error updating weather data: {e}'))
