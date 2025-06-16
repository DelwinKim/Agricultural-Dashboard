export interface WeatherStation {
    id: number;
    station_id: string;
    name: string;
}

export interface GeneralWeatherData {
    id: number;
    station_id: number;
    date: string;
    eto: number;
    max_temp: number;
    min_temp: number;
    min_rh: number;
    solar_rad: number;
    rainfall: number;
    wind_4am: number;
    wind_4pm: number;
    battery_min: number;
    battery_max: number;
}

export interface DetailedWeatherData {
    id: number;
    station_id: number;
    date: string;
    average_temp: number;
    dew_point: number;
    max_dewpoint: number;
    min_dewpoint: number;
    wind_run: number;
    soil_temp: number;
}

export interface HeatUnitsData {
    id: number;
    station_id: number;
    date: string;
    corn_heat_units: number;
    cotton_heat_units: number;
    sorghum_heat_units: number;
    heat_units_50_degree: number;
    heat_units_55_degree: number;
    heat_units_60_degree: number;
}

export interface SeasonalChillUnitsData {
    id: number;
    station_id: number;
    month: string;
    month_num: number;
    method_1_total: number;
    method_2_total: number;
}

export interface TableResponse<T> {
    draw: number;
    recordsTotal: number;
    recordsFiltered: number;
    data: T[];
} 