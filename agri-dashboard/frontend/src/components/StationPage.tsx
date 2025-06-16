import React, { useEffect, useState } from 'react';
import { useParams } from 'react-router-dom';
import api from '../services/api';
import { WeatherStation } from '../types';

// Add DataTables request type
// interface DataTablesRequest {
//     draw: number;
//     start: number;
//     length: number;
//     search: { value: string; regex: boolean };
//     order: Array<{ column: number; dir: string }>;
//     columns: Array<{ data: string; name: string; searchable: boolean; orderable: boolean; search: { value: string; regex: boolean } }>;
//     station_name?: string;
// }

declare global {
    interface Window {
        $: any;
        jQuery: any;
        toggleTable: (tableId: string) => void;
        initializeTable: (tableId: string) => void;
    }
}

const StationPage: React.FC = () => {
    const { stationName } = useParams<{ stationName: string }>();
    const [station, setStation] = useState<WeatherStation | null>(null);
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState<string | null>(null);

    useEffect(() => {
        const fetchStation = async () => {
            try {
                const stations = await api.getStations();
                const foundStation = stations.find(s => s.name === stationName);
                if (foundStation) {
                    setStation(foundStation);
                } else {
                    setError('Station not found');
                }
            } catch (err) {
                setError('Failed to fetch station data');
            } finally {
                setLoading(false);
            }
        };
        fetchStation();
    }, [stationName]);

    useEffect(() => {
        if (station && window.$) {
            try {
                // Initialize the default table
                if (!window.$.fn.DataTable.isDataTable('#generalWeatherTable')) {
                    window.initializeTable('generalWeatherTable');
                }
            } catch (err) {
                console.error('Error initializing DataTables:', err);
                setError('Failed to initialize tables');
            }
        }
    }, [station]);

    if (loading) return <div>Loading...</div>;
    if (error) return <div>Error: {error}</div>;
    if (!station) return <div>Station not found</div>;

    return (
        <div className="container-fluid">
            <h1 className="h3 mb-4 text-gray-800">{station.name}'s Weather Summary</h1>
            
            {/* <div className="btn-group mb-4" role="group">
                <button 
                    type="button"
                    className="btn generalWeather-btn"
                    data-table="generalWeatherTable"
                    onClick={() => window.toggleTable('generalWeatherTable')}
                >
                    General Weather
                </button>
                <button 
                    type="button"
                    className="btn detailedWeather-btn"
                    data-table="detailedWeatherTable"
                    onClick={() => window.toggleTable('detailedWeatherTable')}
                >
                    Detailed Weather
                </button>
                <button 
                    type="button"
                    className="btn heatUnits-btn"
                    data-table="heatUnitsTable"
                    onClick={() => window.toggleTable('heatUnitsTable')}
                >
                    Heat Units
                </button>
                <button 
                    type="button"
                    className="btn chillUnits-btn"
                    data-table="seasonalChillUnitsTable"
                    onClick={() => window.toggleTable('seasonalChillUnitsTable')}
                >
                    Seasonal Chill Units
                </button>
            </div> */}

            {/* General Weather Card */}
            <div id="generalWeatherTableWrapper" className="card shadow mb-4">
                <div className="card-header py-3">
                    <h6 className="m-0 font-weight-bold text-primary">General Summary</h6>
                </div>
                <div className="card-body">
                    <div className="table-responsive">
                        <table id="generalWeatherTable" className="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Date</th>
                                    <th>ETO</th>
                                    <th>Max Temp</th>
                                    <th>Min Temp</th>
                                    <th>Min RH</th>
                                    <th>Solar Rad</th>
                                    <th>Rainfall</th>
                                    <th>Wind 4AM</th>
                                    <th>Wind 4PM</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>

            {/* Detailed Weather Card */}
            <div id="detailedWeatherTableWrapper" className="card shadow mb-4" style={{ display: 'none' }}>
                <div className="card-header py-3">
                    <h6 className="m-0 font-weight-bold text-primary">Detailed Summary</h6>
                </div>
                <div className="card-body">
                    <div className="table-responsive">
                        <table id="detailedWeatherTable" className="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Date</th>
                                    <th>Average Temp</th>
                                    <th>Dew Point</th>
                                    <th>Max Dewpoint</th>
                                    <th>Min Dewpoint</th>
                                    <th>Wind Run</th>
                                    <th>Soil Temp</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>

            {/* Heat Units Card */}
            <div id="heatUnitsTableWrapper" className="card shadow mb-4" style={{ display: 'none' }}>
                <div className="card-header py-3">
                    <h6 className="m-0 font-weight-bold text-primary">Heat Units</h6>
                </div>
                <div className="card-body">
                    <div className="table-responsive">
                        <table id="heatUnitsTable" className="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Date</th>
                                    <th>Corn Heat Units</th>
                                    <th>Cotton Heat Units</th>
                                    <th>Sorghum Heat Units</th>
                                    <th>Heat Units 50°</th>
                                    <th>Heat Units 55°</th>
                                    <th>Heat Units 60°</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>

            {/* Seasonal Chill Units Card */}
            <div id="seasonalChillUnitsTableWrapper" className="card shadow mb-4" style={{ display: 'none' }}>
                <div className="card-header py-3">
                    <h6 className="m-0 font-weight-bold text-primary">Seasonal Chill Units</h6>
                </div>
                <div className="card-body">
                    <div className="table-responsive">
                        <table id="seasonalChillUnitsTable" className="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Month</th>
                                    <th>Method 1</th>
                                    <th>Method 2</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    );
};

export default StationPage;
