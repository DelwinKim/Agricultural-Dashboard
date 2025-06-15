from django import forms
from .models import WeatherStation

class DataDownloadForm(forms.Form):
    station = forms.ModelChoiceField(
        queryset=WeatherStation.objects.all(),
        required=True,
        label="Weather Station",
        widget=forms.Select(attrs={'class': 'form-control'})
    )
    start_date = forms.DateField(
        required=True,
        widget=forms.DateInput(attrs={'type': 'date', 'class': 'form-control'}),
        label="Start Date",
        # help_text="Select the starting date for the data download."
    )
    end_date = forms.DateField(
        required=True,
        widget=forms.DateInput(attrs={'type': 'date', 'class': 'form-control'}),
        label="End Date",
        # help_text="Select the ending date for the data download."
    )   
    fields = forms.MultipleChoiceField(
        choices=[
            ('eto', 'ETo (in.)'),
            ('max_temp', 'Max Temp (°F)'),
            ('min_temp', 'Min Temp (°F)'),
            ('min_rh', 'Min RH (%)'),
            ('solar_rad', 'Solar Radiation (MJ/m²)'),
            ('rainfall', 'Rainfall (in.)'),
            ('wind_4am', 'Wind 4am (mph)'),
            ('wind_4pm', 'Wind 4pm (mph)'),
            # ('battery_min', 'Battery Min (V)'),
            # ('battery_max', 'Battery Max (V)'),
            ('average_temp', 'Average Temp (°F)'),
            ('dew_point', 'Dew Point (°F)'),
            ('max_dewpoint', 'Max Dewpoint (°F)'),
            ('min_dewpoint', 'Min Dewpoint (°F)'),
            ('wind_run', 'Wind Run (miles)'),
            ('soil_temp', 'Soil Temp (°F)'),
            ('corn_heat_units', 'Corn Heat Units'),
            ('cotton_heat_units', 'Cotton Heat Units'),
            ('sorghum_heat_units', 'Sorghum Heat Units'),
            ('heat_units_50_degree', 'Heat Units 50°F'),
            ('heat_units_55_degree', 'Heat Units 55°F'),
            ('heat_units_60_degree', 'Heat Units 60°F'),
            # ('method_1_hours', 'Method 1 Hours'),
            # ('method_2_hours', 'Method 2 Hours'),
            # ('method_1_total', 'Method 1 Total'),
            # ('method_2_total', 'Method 2 Total'),
        ],
        required=True,
        widget=forms.SelectMultiple(attrs={'class': 'form-control dropdown_ex'}),
        label="Fields to Include"
    )

    def clean(self):
        cleaned_data = super().clean()
        start_date = cleaned_data.get("start_date")
        end_date = cleaned_data.get("end_date")
        if start_date and end_date and start_date > end_date:
            raise forms.ValidationError("Start Date cannot be after End Date.")
        return cleaned_data
