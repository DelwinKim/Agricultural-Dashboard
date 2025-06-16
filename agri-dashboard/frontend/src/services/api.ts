import axios from 'axios';
import { WeatherStation, GeneralWeatherData, DetailedWeatherData, HeatUnitsData, SeasonalChillUnitsData } from '../types';

const API_BASE_URL = 'http://localhost:5000/api';

const api = {
    API_BASE_URL,
    // Get all weather stations
    getStations: async (): Promise<WeatherStation[]> => {
        const response = await axios.get(`${API_BASE_URL}/stations`);
        return response.data;
    },

    // Get general weather data for a station
    getGeneralWeather: async (stationId: number, start: number = 0, length: number = 7): Promise<{
        draw: number;
        recordsTotal: number;
        recordsFiltered: number;
        data: GeneralWeatherData[];
    }> => {
        const response = await axios.get(`${API_BASE_URL}/general-weather/${stationId}`, {
            params: { start, length }
        });
        return response.data;
    },

    // Get detailed weather data for a station
    getDetailedWeather: async (stationId: number, start: number = 0, length: number = 7): Promise<{
        draw: number;
        recordsTotal: number;
        recordsFiltered: number;
        data: DetailedWeatherData[];
    }> => {
        const response = await axios.get(`${API_BASE_URL}/detailed-weather/${stationId}`, {
            params: { start, length }
        });
        return response.data;
    },

    // Get heat units data for a station
    getHeatUnits: async (stationId: number, start: number = 0, length: number = 7): Promise<{
        draw: number;
        recordsTotal: number;
        recordsFiltered: number;
        data: HeatUnitsData[];
    }> => {
        const response = await axios.get(`${API_BASE_URL}/heat-units/${stationId}`, {
            params: { start, length }
        });
        return response.data;
    },

    // Get chill units data for a station
    getChillUnits: async (stationId: number): Promise<SeasonalChillUnitsData[]> => {
        const response = await axios.get(`${API_BASE_URL}/chill-units/${stationId}`);
        return response.data;
    },

    // Get recent weather data for all stations
    getRecentWeather: async (): Promise<Record<string, GeneralWeatherData>> => {
        const response = await axios.get(`${API_BASE_URL}/recent-weather`);
        return response.data;
    }
};

export default api; 