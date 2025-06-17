import React, { useEffect, useState } from 'react';
import { Line } from 'react-chartjs-2';
import Split from 'react-split';
import {
    Chart as ChartJS,
    CategoryScale,
    LinearScale,
    PointElement,
    LineElement,
    BarElement,
    Title,
    Tooltip,
    Legend
} from 'chart.js';
import api from '../services/api';
import { WeatherStation } from '../types';
import { useSidebar } from '../contexts/SidebarContext';
import { useParams } from 'react-router-dom';

// Register ChartJS components
ChartJS.register(
    CategoryScale,
    LinearScale,
    PointElement,
    LineElement,
    BarElement,
    Title,
    Tooltip,
    Legend
);

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
    const [chartData, setChartData] = useState<any>(null);
    const { getSidebarState, setSidebarState } = useSidebar();

    // Use per-station state
    const sidebarState = getSidebarState(stationName || '');
    const { showTables, showCharts, activeTable, activeCharts } = sidebarState;

    // Helper to get per-station table key
    const getTableKey = (tableId: string) => `${stationName}|${tableId}`;

    // Redefine window.toggleTable to use per-station key
    useEffect(() => {
        window.toggleTable = (tableId: string) => {
            const key = getTableKey(tableId);
            const wrapper = document.getElementById(tableId + "Wrapper");
            const button = document.querySelector(`[data-table="${tableId}"]`);
            if (wrapper && wrapper.style.display === "none") {
                wrapper.style.display = "";
                if (button) {
                    button.classList.add('btn-filled');
                    button.classList.remove('btn-outline-light');
                }
                if (!window.$.fn.DataTable.isDataTable(`#${tableId}`)) {
                    window.initializeTable(tableId);
                }
                localStorage.setItem(key, 'enabled');
            } else if (wrapper) {
                wrapper.style.display = "none";
                if (button) {
                    button.classList.remove('btn-filled');
                    button.classList.add('btn-outline-light');
                }
                localStorage.removeItem(key);
            }
        };
    }, [stationName]);

    // Function to destroy all DataTables
    const destroyAllTables = () => {
        const tables = ['generalWeatherTable', 'detailedWeatherTable', 'heatUnitsTable', 'seasonalChillUnitsTable'];
        tables.forEach(tableId => {
            if (window.$.fn.DataTable.isDataTable(`#${tableId}`)) {
                window.$(`#${tableId}`).DataTable().destroy();
            }
        });
    };

    // Function to prepare chart data for each chart type
    const prepareChartData = (data: any, chartType: string) => {
        // For all charts except cumulative-heat-units, sort data oldest to newest
        let sortedData = data;
        if (chartType !== 'cumulative-heat-units') {
            sortedData = data.slice().reverse();
        }
        switch (chartType) {
            case 'temperature':
                return {
                    labels: sortedData.map((item: any) => item.date),
                    datasets: [
                        {
                            label: 'Max Temp (°F)',
                            data: sortedData.map((item: any) => item.max_temp),
                            borderColor: 'rgb(255, 99, 132)',
                            backgroundColor: 'rgba(255, 99, 132, 0.2)',
                            fill: false,
                        },
                        {
                            label: 'Min Temp (°F)',
                            data: sortedData.map((item: any) => item.min_temp),
                            borderColor: 'rgb(54, 162, 235)',
                            backgroundColor: 'rgba(54, 162, 235, 0.2)',
                            fill: '-1',
                        },
                        {
                            label: 'Avg Temp (°F)',
                            data: sortedData.map((item: any) => item.average_temp),
                            borderColor: 'rgb(255, 206, 86)',
                            backgroundColor: 'rgba(255, 206, 86, 0.2)',
                            fill: false,
                        }
                    ]
                };
            case 'rainfall':
                return {
                    labels: sortedData.map((item: any) => item.date),
                    datasets: [
                        {
                            type: 'bar',
                            label: 'Rainfall (in.)',
                            data: sortedData.map((item: any) => item.rainfall),
                            backgroundColor: 'rgba(53, 162, 235, 0.5)',
                            yAxisID: 'y1',
                        },
                        {
                            type: 'line',
                            label: 'Max Temp (°F)',
                            data: sortedData.map((item: any) => item.max_temp),
                            borderColor: 'rgb(255, 99, 132)',
                            backgroundColor: 'rgba(255, 99, 132, 0.2)',
                            yAxisID: 'y',
                        }
                    ]
                };
            case 'eto':
                return {
                    labels: sortedData.map((item: any) => item.date),
                    datasets: [
                        {
                            label: 'Daily ETo (in.)',
                            data: sortedData.map((item: any) => item.eto),
                            borderColor: 'rgb(75, 192, 192)',
                            backgroundColor: 'rgba(75, 192, 192, 0.2)',
                            fill: true,
                        }
                    ]
                };
            case 'solar':
                return {
                    labels: sortedData.map((item: any) => item.date),
                    datasets: [
                        {
                            label: 'Solar Radiation (MJ/m2)',
                            data: sortedData.map((item: any) => item.solar_rad),
                            borderColor: 'rgb(255, 159, 64)',
                            backgroundColor: 'rgba(255, 159, 64, 0.2)',
                            fill: true,
                        }
                    ]
                };
            case 'humidity':
                return {
                    labels: sortedData.map((item: any) => item.date),
                    datasets: [
                        {
                            label: 'Min RH (%)',
                            data: sortedData.map((item: any) => item.min_rh),
                            borderColor: 'rgb(153, 102, 255)',
                            backgroundColor: 'rgba(153, 102, 255, 0.2)',
                            fill: false,
                        },
                        {
                            label: 'Dew Point (°F)',
                            data: sortedData.map((item: any) => item.dew_point),
                            borderColor: 'rgb(255, 205, 86)',
                            backgroundColor: 'rgba(255, 205, 86, 0.2)',
                            fill: false,
                        }
                    ]
                };
            case 'humidity-dewpoint':
                return {
                    labels: sortedData.map((item: any) => item.date),
                    datasets: [
                        {
                            label: 'Min RH (%)',
                            data: sortedData.map((item: any) => item.min_rh),
                            borderColor: 'rgb(153, 102, 255)',
                            backgroundColor: 'rgba(153, 102, 255, 0.2)',
                            fill: false,
                        },
                        {
                            label: 'Dew Point (°F)',
                            data: sortedData.map((item: any) => item.dew_point),
                            borderColor: 'rgb(255, 205, 86)',
                            backgroundColor: 'rgba(255, 205, 86, 0.2)',
                            fill: false,
                        }
                    ]
                };
            case 'dewpoint-scatter':
                return {
                    labels: sortedData.map((item: any) => item.date),
                    datasets: [
                        {
                            label: 'Temp vs Dew Point',
                            data: sortedData.map((item: any) => ({ x: item.dew_point, y: item.avg_temp, date: item.date, rh: item.min_rh })),
                            backgroundColor: sortedData.map((item: any) => `rgba(255, 99, 132, ${item.min_rh / 100})`),
                            pointRadius: 5,
                            showLine: false,
                        }
                    ]
                };
            case 'wind':
                return {
                    labels: sortedData.map((item: any) => item.date),
                    datasets: [
                        {
                            label: 'Wind 4am (mph)',
                            data: sortedData.map((item: any) => item.wind_4am),
                            borderColor: 'rgb(54, 162, 235)',
                            backgroundColor: 'rgba(54, 162, 235, 0.2)',
                            fill: false,
                        },
                        {
                            label: 'Wind 4pm (mph)',
                            data: sortedData.map((item: any) => item.wind_4pm),
                            borderColor: 'rgb(255, 99, 132)',
                            backgroundColor: 'rgba(255, 99, 132, 0.2)',
                            fill: false,
                        },
                        {
                            label: 'Wind Run (miles)',
                            data: sortedData.map((item: any) => item.wind_run),
                            borderColor: 'rgb(255, 206, 86)',
                            backgroundColor: 'rgba(255, 206, 86, 0.2)',
                            fill: true,
                        }
                    ]
                };
            case 'cumulative-heat-units': {
                // Calculate cumulative sums for each heat unit type, starting from latest to oldest
                let cumCorn = 0, cumCotton = 0, cumSorghum = 0;
                const corn: number[] = [];
                const cotton: number[] = [];
                const sorghum: number[] = [];
                // Iterate from latest to oldest
                for (let i = data.length - 1; i >= 0; i--) {
                    const item = data[i];
                    cumCorn += item.corn_heat_units || 0;
                    cumCotton += item.cotton_heat_units || 0;
                    cumSorghum += item.sorghum_heat_units || 0;
                    corn.push(cumCorn);
                    cotton.push(cumCotton);
                    sorghum.push(cumSorghum);
                }
                // Now, labels and data are both latest-to-oldest, so display as-is
                return {
                    labels: data.map((item: any) => item.date).slice().reverse(),
                    datasets: [
                        {
                            label: 'Cumulative Corn Heat Units',
                            data: corn,
                            borderColor: 'rgb(255, 99, 132)',
                            backgroundColor: 'rgba(255, 99, 132, 0.2)',
                            fill: false,
                        },
                        {
                            label: 'Cumulative Cotton Heat Units',
                            data: cotton,
                            borderColor: 'rgb(54, 162, 235)',
                            backgroundColor: 'rgba(54, 162, 235, 0.2)',
                            fill: false,
                        },
                        {
                            label: 'Cumulative Sorghum Heat Units',
                            data: sorghum,
                            borderColor: 'rgb(255, 206, 86)',
                            backgroundColor: 'rgba(255, 206, 86, 0.2)',
                            fill: false,
                        }
                    ]
                };
            }
            default:
                return {
                    labels: data.map((item: any) => item.date),
                    datasets: []
                };
        }
    };

    const initializeEnabledTables = () => {
        const tables = ['generalWeatherTable', 'detailedWeatherTable', 'heatUnitsTable', 'seasonalChillUnitsTable'];
        
        tables.forEach(tableId => {
            const state = localStorage.getItem(getTableKey(tableId));
            const wrapper = document.getElementById(tableId + "Wrapper");
            const button = document.querySelector(`[data-table="${tableId}"]`);

            if (state === 'enabled' && wrapper) {
                wrapper.style.display = "";
                if (button) {
                    button.classList.add('btn-filled');
                    button.classList.remove('btn-outline-light');
                }
                if (!window.$.fn.DataTable.isDataTable(`#${tableId}`)) {
                    window.initializeTable(tableId);
                }
            } else if (wrapper) {
                wrapper.style.display = "none";
                if (button) {
                    button.classList.remove('btn-filled');
                    button.classList.add('btn-outline-light');
                }
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
                    destroyAllTables();
                }
            } catch (err) {
                setStation(null);
                setError('Failed to fetch station data');
                destroyAllTables();
            } finally {
                setLoading(false);
            }
        };
        fetchStation();
    }, [stationName]);

    useEffect(() => {
        if (station && showCharts) {
            api.getChartData(station.name)
                .then(data => {
                    setChartData(data);
                })
                .catch(err => {
                    console.error('Error fetching chart data:', err);
                });
        }
    }, [station, showCharts, activeCharts]);

    useEffect(() => {
        if (station && window.$ && !error) {
            try {
                // Destroy existing tables first
                destroyAllTables();

                // Initialize the default table if not already enabled
                if (!localStorage.getItem('generalWeatherTable')) {
                    window.initializeTable('generalWeatherTable');
                    localStorage.setItem('generalWeatherTable', 'enabled');
                }

                // Initialize all enabled tables
                initializeEnabledTables();
            } catch (err) {
                console.error('Error initializing DataTables:', err);
                setError('Failed to initialize tables');
            }
        }
    }, [station, error]);

    // Effect to handle split pane changes
    useEffect(() => {
        if (showTables) {
            // Initialize enabled tables when split pane is activated or deactivated
            initializeEnabledTables();
        }
    }, [showTables, showCharts]);

    // Update sidebar state when toggles change (example for showTables)
    const handleToggleShowTables = () => {
        if (!stationName) return;
        const newValue = !showTables;
        setSidebarState(stationName, { showTables: newValue });
    };

    useEffect(() => {
        if (!stationName) return;
        // On first load for this station, ensure General Summary is enabled if no tables are toggled
        const generalKey = getTableKey('generalWeatherTable');
        const tables = ['generalWeatherTable', 'detailedWeatherTable', 'heatUnitsTable', 'seasonalChillUnitsTable'];
        const anyTableEnabled = tables.some(tableId => localStorage.getItem(getTableKey(tableId)) === 'enabled');
        if (!anyTableEnabled) {
            localStorage.setItem(generalKey, 'enabled');
        }
        initializeEnabledTables();
    }, [stationName]);

    if (loading) return <div>Loading...</div>;
    if (error) return <div>Error: {error}</div>;
    if (!station) return <div>Station not found</div>;

    return (
        <div className="container-fluid">
            <h1 className="h3 mt-4 mb-4 text-gray-800">{station.name}'s Weather Summary</h1>
            
            {showTables && showCharts ? (
                <Split
                    sizes={[50, 50]}
                    minSize={300}
                    expandToMin={false}
                    gutterSize={10}
                    gutterAlign="center"
                    snapOffset={30}
                    dragInterval={1}
                    direction="horizontal"
                    cursor="col-resize"
                    className="split-view"
                >
                    <div className="tables-section">
            <div id="generalWeatherTableWrapper" className="card shadow mb-4">
                <div className="card-header py-3">
                    <h6 className="m-0 font-weight-bold">General Summary</h6>
                </div>
                <div className="card-body">
                    <div className="table-responsive">
                                    <table id="generalWeatherTable" className="table table-bordered" width="100%" cellSpacing="0">
                            <thead>
                                <tr>
                                    <th>Date</th>
                                                <th>ETo (in.)</th>
                                                <th>Max Temp (°F)</th>
                                                <th>Min Temp (°F)</th>
                                                <th>Min RH (%)</th>
                                                <th>Solar Rad. (MJ/m2)</th>
                                                <th>Rainfall (in.)</th>
                                                <th>Wind 4am (mph)</th>
                                                <th>Wind 4pm (mph)</th>
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

            <div id="detailedWeatherTableWrapper" className="card shadow mb-4" style={{ display: 'none' }}>
                <div className="card-header py-3">
                    <h6 className="m-0 font-weight-bold">Detailed Summary</h6>
                </div>
                <div className="card-body">
                    <div className="table-responsive">
                                    <table id="detailedWeatherTable" className="table table-bordered" width="100%" cellSpacing="0">
                            <thead>
                                <tr>
                                    <th>Date</th>
                                                <th>Avg Temp (°F)</th>
                                                <th>Dew Point (°F)</th>
                                                <th>Max Dewpoint (°F)</th>
                                                <th>Min Dewpoint (°F)</th>
                                                <th>Wind Run (miles)</th>
                                                <th>Soil Temp (°F)</th>
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

            <div id="heatUnitsTableWrapper" className="card shadow mb-4" style={{ display: 'none' }}>
                <div className="card-header py-3">
                    <h6 className="m-0 font-weight-bold">Heat Units</h6>
                </div>
                <div className="card-body">
                    <div className="table-responsive">
                                    <table id="heatUnitsTable" className="table table-bordered" width="100%" cellSpacing="0">
                            <thead>
                                <tr>
                                    <th>Date</th>
                                    <th>Corn Heat Units</th>
                                    <th>Cotton Heat Units</th>
                                    <th>Sorghum Heat Units</th>
                                                <th>Heat Units 50°F</th>
                                                <th>Heat Units 55°F</th>
                                                <th>Heat Units 60°F</th>
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

            <div id="seasonalChillUnitsTableWrapper" className="card shadow mb-4" style={{ display: 'none' }}>
                <div className="card-header py-3">
                    <h6 className="m-0 font-weight-bold">Seasonal Chill Units</h6>
                </div>
                <div className="card-body">
                    <div className="table-responsive">
                                    <table id="seasonalChillUnitsTable" className="table table-bordered" width="100%" cellSpacing="0">
                            <thead>
                                <tr>
                                  <th>Month</th>
                                                <th>Method 1<br />Number of hours ≥ 32°F and ≤ 45°F</th>
                                                <th>Method 2<br />Number of hours ≤ 45°F</th>
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

                    <div className="charts-section p-3">
                        {/* Render all selected charts */}
                        {chartData && Array.isArray(activeCharts) && activeCharts.length > 0 ? (
                            activeCharts.map((chartType) => {
                                const chart = prepareChartData(chartData, chartType);
                                let title = '';
                                switch (chartType) {
                                    case 'temperature': title = 'Max / Min / Avg Temperature'; break;
                                    case 'rainfall': title = 'Rainfall & Max Temp (Dual Axis)'; break;
                                    case 'eto': title = 'Daily ETo (Evapotranspiration)'; break;
                                    case 'solar': title = 'Solar Radiation'; break;
                                    case 'humidity': title = 'Min RH & Dew Point'; break;
                                    case 'humidity-dewpoint': title = 'Min RH & Dew Point Over Time'; break;
                                    case 'dewpoint-scatter': title = 'Ambient Temp vs Dew Point (Scatter)'; break;
                                    case 'wind': title = 'Wind Patterns'; break;
                                    case 'cumulative-heat-units': title = 'Cumulative Heat Units (Corn, Cotton, Sorghum)'; break;
                                    default: title = 'Weather Data Chart';
                                }
                                return (
                                    <div className="mb-2 card" key={chartType}>
                                        <div className="card-header">
                                            <h6 className="m-0 font-weight-bold" style={{ fontSize: '1rem' }}>{title}</h6>
                                        </div>
                                        <div className="card-body" style={{ height: '500px', padding: 0 }}>
                                            <div style={{ width: '100%', height: '100%' }}>
                                                <Line
                                                    data={chartType === 'rainfall' ? (chart as any) : chart}
                                                    options={{
                                                        responsive: true,
                                                        maintainAspectRatio: false,
                                                        plugins: {
                                                            legend: { position: 'top' },
                                                            title: { display: false }
                                                        },
                                                        ...(chartType === 'temperature' && {
                                                            scales: { y: { title: { display: true, text: 'Temperature (°F)' }, beginAtZero: false } }
                                                        }),
                                                        ...(chartType === 'rainfall' && {
                                                            scales: { y: { type: 'linear', position: 'left' }, y1: { type: 'linear', position: 'right', grid: { drawOnChartArea: false } } }
                                                        }),
                                                        ...(chartType === 'humidity-dewpoint' && {
                                                            scales: { y: { title: { display: true, text: 'Value' }, beginAtZero: false } }
                                                        }),
                                                        ...(chartType === 'dewpoint-scatter' && {
                                                            elements: { point: { pointStyle: 'circle' } },
                                                            scales: { x: { title: { display: true, text: 'Dew Point (°F)' } }, y: { title: { display: true, text: 'Ambient Temp (°F)' } } }
                                                        }),
                                                        ...(chartType === 'cumulative-heat-units' && {
                                                            scales: { y: { title: { display: true, text: 'Cumulative Units' }, beginAtZero: true } }
                                                        })
                                                    }}
                                                    height={400}
                                                />
                                            </div>
                                        </div>
                                    </div>
                                );
                            })
                        ) : (
                            <div className="text-center text-muted" style={{ padding: '2rem' }}>
                                {Array.isArray(activeCharts) && activeCharts.length === 0
                                    ? 'No charts selected.'
                                    : 'No chart data available.'}
                            </div>
                        )}
                    </div>
                </Split>
            ) : showTables ? (
                <div className="tables-section">
                    <div id="generalWeatherTableWrapper" className="card shadow mb-4">
                        <div className="card-header py-3">
                            <h6 className="m-0 font-weight-bold">General Summary</h6>
                        </div>
                        <div className="card-body">
                            <div className="table-responsive">
                                <table id="generalWeatherTable" className="table table-bordered" width="100%" cellSpacing="0">
                                    <thead>
                                        <tr>
                                            <th>Date</th>
                                            <th>ETo (in.)</th>
                                            <th>Max Temp (°F)</th>
                                            <th>Min Temp (°F)</th>
                                            <th>Min RH (%)</th>
                                            <th>Solar Rad. (MJ/m2)</th>
                                            <th>Rainfall (in.)</th>
                                            <th>Wind 4am (mph)</th>
                                            <th>Wind 4pm (mph)</th>
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

                    <div id="detailedWeatherTableWrapper" className="card shadow mb-4" style={{ display: 'none' }}>
                        <div className="card-header py-3">
                            <h6 className="m-0 font-weight-bold">Detailed Summary</h6>
                        </div>
                        <div className="card-body">
                            <div className="table-responsive">
                                <table id="detailedWeatherTable" className="table table-bordered" width="100%" cellSpacing="0">
                                    <thead>
                                        <tr>
                                            <th>Date</th>
                                            <th>Avg Temp (°F)</th>
                                            <th>Dew Point (°F)</th>
                                            <th>Max Dewpoint (°F)</th>
                                            <th>Min Dewpoint (°F)</th>
                                            <th>Wind Run (miles)</th>
                                            <th>Soil Temp (°F)</th>
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

                    <div id="heatUnitsTableWrapper" className="card shadow mb-4" style={{ display: 'none' }}>
                        <div className="card-header py-3">
                            <h6 className="m-0 font-weight-bold">Heat Units</h6>
                        </div>
                        <div className="card-body">
                            <div className="table-responsive">
                                <table id="heatUnitsTable" className="table table-bordered" width="100%" cellSpacing="0">
                                    <thead>
                                        <tr>
                                            <th>Date</th>
                                            <th>Corn Heat Units</th>
                                            <th>Cotton Heat Units</th>
                                            <th>Sorghum Heat Units</th>
                                            <th>Heat Units 50°F</th>
                                            <th>Heat Units 55°F</th>
                                            <th>Heat Units 60°F</th>
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

            <div id="seasonalChillUnitsTableWrapper" className="card shadow mb-4" style={{ display: 'none' }}>
                <div className="card-header py-3">
                    <h6 className="m-0 font-weight-bold">Seasonal Chill Units</h6>
                </div>
                <div className="card-body">
                    <div className="table-responsive">
                        <table id="seasonalChillUnitsTable" className="table table-bordered" width="100%" cellSpacing="0">
                            <thead>
                                <tr>
                                    <th>Month</th>
                                    <th>Method 1<br />Number of hours ≥ 32°F and ≤ 45°F</th>
                                    <th>Method 2<br />Number of hours ≤ 45°F</th>
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
            ) : showCharts ? (
                <div className="charts-section p-3">
                    {/* Render all selected charts */}
                    {chartData && Array.isArray(activeCharts) && activeCharts.length > 0 ? (
                        activeCharts.map((chartType) => {
                            const chart = prepareChartData(chartData, chartType);
                            let title = '';
                            switch (chartType) {
                                case 'temperature': title = 'Max / Min / Avg Temperature'; break;
                                case 'rainfall': title = 'Rainfall & Max Temp (Dual Axis)'; break;
                                case 'eto': title = 'Daily ETo (Evapotranspiration)'; break;
                                case 'solar': title = 'Solar Radiation'; break;
                                case 'humidity': title = 'Min RH & Dew Point'; break;
                                case 'humidity-dewpoint': title = 'Min RH & Dew Point Over Time'; break;
                                case 'dewpoint-scatter': title = 'Ambient Temp vs Dew Point (Scatter)'; break;
                                case 'wind': title = 'Wind Patterns'; break;
                                case 'cumulative-heat-units': title = 'Cumulative Heat Units (Corn, Cotton, Sorghum)'; break;
                                default: title = 'Weather Data Chart';
                            }
                            return (
                                <div className="mb-2 card" key={chartType}>
                                    <div className="card-header">
                                        <h6 className="m-0 font-weight-bold" style={{ fontSize: '1rem' }}>{title}</h6>
                                    </div>
                                    <div className="card-body" style={{ height: '500px', padding: 0 }}>
                                        <div style={{ width: '100%', height: '100%' }}>
                                            <Line
                                                data={chartType === 'rainfall' ? (chart as any) : chart}
                                                options={{
                                                    responsive: true,
                                                    maintainAspectRatio: false,
                                                    plugins: {
                                                        legend: { position: 'top' },
                                                        title: { display: false }
                                                    },
                                                    ...(chartType === 'temperature' && {
                                                        scales: { y: { title: { display: true, text: 'Temperature (°F)' }, beginAtZero: false } }
                                                    }),
                                                    ...(chartType === 'rainfall' && {
                                                        scales: { y: { type: 'linear', position: 'left' }, y1: { type: 'linear', position: 'right', grid: { drawOnChartArea: false } } }
                                                    }),
                                                    ...(chartType === 'humidity-dewpoint' && {
                                                        scales: { y: { title: { display: true, text: 'Value' }, beginAtZero: false } }
                                                    }),
                                                    ...(chartType === 'dewpoint-scatter' && {
                                                        elements: { point: { pointStyle: 'circle' } },
                                                        scales: { x: { title: { display: true, text: 'Dew Point (°F)' } }, y: { title: { display: true, text: 'Ambient Temp (°F)' } } }
                                                    }),
                                                    ...(chartType === 'cumulative-heat-units' && {
                                                        scales: { y: { title: { display: true, text: 'Cumulative Units' }, beginAtZero: true } }
                                                    })
                                                }}
                                                height={400}
                                            />
                                        </div>
                                    </div>
                                </div>
                            );
                        })
                    ) : (
                        <div className="text-center text-muted" style={{ padding: '2rem' }}>
                            {Array.isArray(activeCharts) && activeCharts.length === 0
                                ? 'No charts selected.'
                                : 'No chart data available.'}
                        </div>
                    )}
                </div>
            ) : null}
        </div>
    );
};

export default StationPage;
