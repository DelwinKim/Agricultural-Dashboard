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

    // Function to destroy all DataTables
    const destroyAllTables = () => {
        const tables = ['generalWeatherTable', 'detailedWeatherTable', 'heatUnitsTable', 'seasonalChillUnitsTable'];
        tables.forEach(tableId => {
            if (window.$.fn.DataTable.isDataTable(`#${tableId}`)) {
                window.$(`#${tableId}`).DataTable().destroy();
            }
        });
    };

    useEffect(() => {
        const fetchStation = async () => {
            try {
                setLoading(true);
                setError(null);
                const stations = await api.getStations();
                const foundStation = stations.find(s => s.name === stationName);
                if (foundStation) {
                    setStation(foundStation);
                } else {
                    setStation(null);
                    setError('Station not found');
                    // Destroy any existing tables when station is not found
                    destroyAllTables();
                }
            } catch (err) {
                setStation(null);
                setError('Failed to fetch station data');
                // Destroy any existing tables on error
                destroyAllTables();
            } finally {
                setLoading(false);
            }
        };
        fetchStation();
    }, [stationName]);

    useEffect(() => {
        if (station && window.$ && !error) {
            try {
                // Destroy existing tables first
                destroyAllTables();

                // Initialize the default table
                window.initializeTable('generalWeatherTable');
                // Set the button state
                const defaultButton = document.querySelector('[data-table="generalWeatherTable"]');
                if (defaultButton) {
                    defaultButton.classList.add('btn-filled');
                    defaultButton.classList.remove('btn-outline-light');
                }
                // Set localStorage state
                localStorage.setItem('generalWeatherTable', 'enabled');

                // Check other tables' states and initialize if previously enabled
                const tables = ['detailedWeatherTable', 'heatUnitsTable', 'seasonalChillUnitsTable'];
                
                tables.forEach(tableId => {
                    const state = localStorage.getItem(tableId);
                    const button = document.querySelector(`[data-table="${tableId}"]`);
                    const wrapper = document.getElementById(tableId + "Wrapper");

                    if (state === 'enabled' && wrapper) {
                        wrapper.style.display = "";
                        if (button) {
                            button.classList.add('btn-filled');
                            button.classList.remove('btn-outline-light');
                        }
                        window.initializeTable(tableId);
                    } else if (wrapper) {
                        wrapper.style.display = "none";
                        if (button) {
                            button.classList.remove('btn-filled');
                            button.classList.add('btn-outline-light');
                        }
                    }
                });
            } catch (err) {
                console.error('Error initializing DataTables:', err);
                setError('Failed to initialize tables');
            }
        }
    }, [station, error]);

    if (loading) return <div>Loading...</div>;
    if (error) return <div>Error: {error}</div>;
    if (!station) return <div>Station not found</div>;

    return (
        <div className="container-fluid">
            <h1 className="h3 mt-4 mb-4 text-gray-800">{station.name}'s Weather Summary</h1>
            
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
                    <h6 className="m-0 font-weight-bold">General Summary</h6>
                </div>
                <div className="card-body">
                    <div className="table-responsive">
                        <table id="generalWeatherTable" className="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Date</th>
                                    <th>
                                        ETo<br />(in.)
                                    </th>
                                    <th>
                                        Max Temp<br />(°F)
                                    </th>
                                    <th>
                                        Min Temp<br />(°F)
                                    </th>
                                    <th>
                                        Min RH<br />(%)
                                    </th>
                                    <th>
                                        Solar Rad.<br />(MJ/m2)
                                    </th>
                                    <th>
                                        Rainfall<br />(in.)
                                    </th>
                                    <th>
                                        Wind 4am<br />(mph)
                                    </th>
                                    <th>
                                        Wind 4pm<br />(mph)
                                    </th>
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
                    <h6 className="m-0 font-weight-bold">Detailed Summary</h6>
                </div>
                <div className="card-body">
                    <div className="table-responsive">
                        <table id="detailedWeatherTable" className="table table-bordered">
                            <thead>
                                <tr>
                                <th>Date</th>
                                <th>
                                    Avg Temp<br />(°F)
                                </th>
                                <th>
                                    Dew Point<br />(°F)
                                </th>
                                <th>
                                    Max Dewpoint<br />(°F)
                                </th>
                                <th>
                                    Min Dewpoint<br />(°F)
                                </th>
                                <th>
                                    Wind Run<br />(miles)
                                </th>
                                <th>
                                    Soil Temp<br />(°F)
                                </th>
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
                    <h6 className="m-0 font-weight-bold">Heat Units</h6>
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
                                    <th>Heat Units 50&deg;F</th>
                                    <th>Heat Units 55&deg;F</th>
                                    <th>Heat Units 60&deg;F</th>
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
                    <h6 className="m-0 font-weight-bold">Seasonal Chill Units</h6>
                </div>
                <div className="card-body">
                    <div className="table-responsive">
                        <table id="seasonalChillUnitsTable" className="table table-bordered">
                            <thead>
                                <tr>
                                  <th>Month</th>
                                  <th>
                                    Method 1<br />
                                    Number of hours ≥ 32°F and ≤ 45°F
                                  </th>
                                  <th>
                                    Method 2<br />
                                    Number of hours ≤ 45°F
                                  </th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th>Total</th>
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
