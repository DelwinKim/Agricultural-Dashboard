import React, { useEffect, useState } from 'react';
import { Table } from 'react-bootstrap';
import { Link } from 'react-router-dom';
import api from '../services/api';
import { GeneralWeatherData } from '../types';

const regions_and_stations = {
  "Coastal Bend": ["Corpus Christi Agrilife", "Corpus Christi North", "Corpus Christi South", "Dickinson", 
                   "Driscoll", "Freer", "Garwood", "Goliad", "Houston", "Houston North", "Kingsville", 
                   "Memorial Village", "Refugio", "Richmond North", "Richmond South", "Spring", "Victoria County West"],
  "East Texas": ["Not Available"],
  "Greater Texas": ["Not Available"],
  "Lower Rio Grande": ["Not Available"],
  "South Central": ["Not Available"],
  "The Metroplex": ["Not Available"],   
  "West Texas": ["Not Available"],
  "Winter Garden": ["Not Available"],
};

const HomePage: React.FC = () => {
  const [recentWeatherData, setRecentWeatherData] = useState<Record<string, GeneralWeatherData>>({});

  useEffect(() => {
    const fetchData = async () => {
      try {
        const data = await api.getRecentWeather();
        setRecentWeatherData(data);
      } catch (error) {
        console.error('Error fetching recent weather data:', error);
      }
    };

    fetchData();
  }, []);

  return (
    <div className="container-fluid px-4">
      <div className="table-responsive mb-5 mt-5">
        <Table id="stationsTable" bordered hover>
          <thead>
            <tr>
              <th colSpan={9} style={{ textAlign: 'center', backgroundColor: '#a5a9ac25', fontWeight: 'normal' }}>
                <i className="fas fa-table me-1"></i>
                Yesterday's Weather Summary
              </th>
            </tr>
            <tr>
              <th style={{ backgroundColor: '#E5F4E7', fontWeight: 'normal' }}>Station</th>
              <th style={{ backgroundColor: '#E5F4E7', fontWeight: 'normal' }}>ETo<br/>(in.)</th>
              <th style={{ backgroundColor: '#E5F4E7', fontWeight: 'normal' }}>Max Temp<br/>(°F)</th>
              <th style={{ backgroundColor: '#E5F4E7', fontWeight: 'normal' }}>Min Temp<br/>(°F)</th>
              <th style={{ backgroundColor: '#E5F4E7', fontWeight: 'normal' }}>Min RH<br/>(%)</th>
              <th style={{ backgroundColor: '#E5F4E7', fontWeight: 'normal' }}>Solar Rad.<br/>(MJ/m²)</th>
              <th style={{ backgroundColor: '#E5F4E7', fontWeight: 'normal' }}>Rainfall<br/>(in.)</th>
              <th style={{ backgroundColor: '#E5F4E7', fontWeight: 'normal' }}>Wind 4am<br/>(mph)</th>
              <th style={{ backgroundColor: '#E5F4E7', fontWeight: 'normal' }}>Wind 4pm<br/>(mph)</th>
            </tr>
            <tr>
              <th colSpan={9} style={{ textAlign: 'center', backgroundColor: '#a5a9ac25', fontWeight: 'normal' }}>
                Coastal Bend
              </th>
            </tr>
          </thead>
          <tbody>
            {Object.entries(recentWeatherData).map(([stationName, data]) => (
              <tr key={stationName}>
                <td>
                  <Link to={`/station/${encodeURIComponent(stationName)}`} style={{ textDecoration: 'none' }}>
                    {stationName}
                  </Link>
                </td>
                <td>{data.eto}</td>
                <td>{data.max_temp}</td>
                <td>{data.min_temp}</td>
                <td>{data.min_rh}</td>
                <td>{data.solar_rad}</td>
                <td>{data.rainfall}</td>
                <td>{data.wind_4am}</td>
                <td>{data.wind_4pm}</td>
              </tr>
            ))}
          </tbody>
        </Table>
      </div>
    </div>
  );
};

export default HomePage;