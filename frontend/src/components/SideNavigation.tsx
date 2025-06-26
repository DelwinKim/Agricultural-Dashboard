import React, { useState, useEffect } from 'react';
import { Nav } from 'react-bootstrap';
import { Link, useLocation, useParams } from 'react-router-dom';
import { 
    House, 
    CloudSun, 
    ThermometerHalf, 
    Droplet, 
    Wind, 
    Sun, 
    Table,
    BarChart,
    ChevronDown,
    ChevronRight,
    Snow,
    Fire,
    FileText,
    Clipboard2Data,
    File,
} from 'react-bootstrap-icons';
import { useSidebar } from '../contexts/SidebarContext';

interface SideNavigationProps {
    onToggleTable: (tableName: string) => void;
    activeTables: {
        generalWeather: boolean;
        detailedWeather: boolean;
        heatUnits: boolean;
        chillUnits: boolean;
    };
}

const SideNavigation: React.FC<SideNavigationProps> = ({ onToggleTable, activeTables }) => {
    const location = useLocation();
    const { stationName } = useParams<{ stationName: string }>();
    const isStationPage = location.pathname.startsWith('/station/');
    const { getSidebarState, setSidebarState } = useSidebar();
    const sidebarState = getSidebarState(stationName || '');
    const { showCharts, showTables, activeCharts, startDate = '', endDate = '' } = sidebarState;

    // Dropdown expanded state is now per-station
    const tablesExpanded = showTables;
    const chartsExpanded = showCharts;

    const toggleTables = () => {
        setSidebarState(stationName || '', { showTables: !showTables });
    };

    const toggleCharts = () => {
        setSidebarState(stationName || '', { showCharts: !showCharts });
    };

    const handleChartToggle = (chartType: string) => {
        const newCharts = activeCharts.includes(chartType)
            ? activeCharts.filter((c: string) => c !== chartType)
            : [...activeCharts, chartType];
        setSidebarState(stationName || '', { activeCharts: newCharts, showCharts: true });
    };

    // Date picker state and handlers (lifted from StationPage)
    // Optionally, sync with context or localStorage if you want persistence

    return (
        <nav className="sb-sidenav accordion sb-sidenav-light" id="sidenavAccordion">
            <div className="sb-sidenav-menu">
                <div className="nav">
                    <div className="sb-sidenav-menu-heading">Visualization Options</div>
                    <a 
                        className={`nav-link sb-dropdown-toggle${tablesExpanded ? ' active-dropdown' : ''} ${tablesExpanded ? '' : 'collapsed'}`}
                        data-bs-toggle="collapse" 
                        data-bs-target="#collapseTables" 
                        aria-expanded={tablesExpanded} 
                        aria-controls="collapseTables"
                        onClick={toggleTables}
                        style={{ fontWeight: tablesExpanded ? 'bold' : 'normal', background: tablesExpanded ? 'rgba(25,135,84,0.08)' : 'transparent' }}
                    >
                        <div className="sb-nav-link-icon">
                            <Table />
                        </div>
                        Tables
                        <div className="sb-sidenav-collapse-arrow" style={{ marginLeft: 8, transition: 'transform 0.2s' }}>
                            {tablesExpanded ? <ChevronDown /> : <ChevronRight />}
                        </div>
                    </a>
                    <div 
                        className={`collapse ${tablesExpanded ? 'show' : ''}`} 
                        id="collapseTables" 
                        aria-labelledby="headingTables" 
                        data-bs-parent="#sidenavAccordion"
                    >
                        <nav className="sb-sidenav-menu-nested nav flex-column">
                            <div className="btn-group d-flex flex-column">
                                <button 
                                    type="button"
                                    className={`table-toggle-btn generalWeather-btn${activeTables.generalWeather ? ' active' : ''}`}
                                    data-table="generalWeatherTable"
                                    onClick={() => window.toggleTable('generalWeatherTable')}
                                >
                                    <Clipboard2Data className="me-2" />
                                    General Summary
                                </button>
                                <button 
                                    type="button"
                                    className={`table-toggle-btn detailedWeather-btn${activeTables.detailedWeather ? ' active' : ''}`}
                                    data-table="detailedWeatherTable"
                                    onClick={() => window.toggleTable('detailedWeatherTable')}
                                >
                                    <FileText className="me-2" />
                                    Detailed Summary
                                </button>
                                <button 
                                    type="button"
                                    className={`table-toggle-btn heatUnits-btn${activeTables.heatUnits ? ' active' : ''}`}
                                    data-table="heatUnitsTable"
                                    onClick={() => window.toggleTable('heatUnitsTable')}
                                >
                                    <Fire className="me-2" />
                                    Heat Units
                                </button>
                                <button 
                                    type="button"
                                    className={`table-toggle-btn chillUnits-btn${activeTables.chillUnits ? ' active' : ''}`}
                                    data-table="seasonalChillUnitsTable"
                                    onClick={() => window.toggleTable('seasonalChillUnitsTable')}
                                >
                                    <Snow className="me-2" />
                                    Chill Units
                                </button>
                            </div>
                        </nav>
                    </div>

                    {/* Charts Section */}
                    <a 
                        className={`nav-link sb-dropdown-toggle${chartsExpanded ? ' active-dropdown' : ''} ${chartsExpanded ? '' : 'collapsed'}`}
                        data-bs-toggle="collapse" 
                        data-bs-target="#collapseCharts" 
                        aria-expanded={chartsExpanded} 
                        aria-controls="collapseCharts"
                        onClick={toggleCharts}
                        style={{ fontWeight: chartsExpanded ? 'bold' : 'normal', background: chartsExpanded ? 'rgba(25,135,84,0.08)' : 'transparent' }}
                    >
                        <div className="sb-nav-link-icon">
                            <BarChart />
                        </div>
                        Charts
                        <div className="sb-sidenav-collapse-arrow" style={{ marginLeft: 8, transition: 'transform 0.2s' }}>
                            {chartsExpanded ? <ChevronDown /> : <ChevronRight />}
                        </div>
                    </a>
                    <div 
                        className={`collapse ${chartsExpanded ? 'show' : ''}`} 
                        id="collapseCharts" 
                        aria-labelledby="headingCharts" 
                        data-bs-parent="#sidenavAccordion"
                    >
                        <nav className="sb-sidenav-menu-nested nav flex-column">
                            <div className="btn-group d-flex flex-column">
                                <button 
                                    className={`chart-toggle-btn${activeCharts.includes('temperature') ? ' active' : ''}`}
                                    onClick={() => handleChartToggle('temperature')}
                                >
                                    <ThermometerHalf className="icon-temp me-2" />
                                    Temperature
                                </button>
                                <button 
                                    className={`chart-toggle-btn${activeCharts.includes('rainfall') ? ' active' : ''}`}
                                    onClick={() => handleChartToggle('rainfall')}
                                >
                                    <Droplet className="icon-rain me-2" />
                                    Rainfall
                                </button>
                                <button 
                                    className={`chart-toggle-btn${activeCharts.includes('wind') ? ' active' : ''}`}
                                    onClick={() => handleChartToggle('wind')}
                                >
                                    <Wind className="icon-wind me-2" />
                                    Wind
                                </button>
                                <button 
                                    className={`chart-toggle-btn${activeCharts.includes('humidity-dewpoint') ? ' active' : ''}`}
                                    onClick={() => handleChartToggle('humidity-dewpoint')}
                                >
                                    <Droplet className="icon-humidity me-2" />
                                    Min RH & Dew Point
                                </button>
                                <button 
                                    className={`chart-toggle-btn${activeCharts.includes('cumulative-heat-units') ? ' active' : ''}`}
                                    onClick={() => handleChartToggle('cumulative-heat-units')}
                                >
                                    <Sun className="icon-heat" />
                                    Cumulative Heat Units
                                </button>
                            </div>
                        </nav>
                    </div>
                    {/* Date Picker Section */}
                    <div className="mb-3 p-2 d-flex justify-content-center" style={{ background: 'inherit', borderRadius: 8 }}>
                        <div className="d-flex flex-column align-items-center w-100" style={{ gap: '0.5rem' }}>
                            <label style={{ fontWeight: 500, width: '100%', textAlign: 'center' }}>
                                <i className="bi bi-calendar-date me-2" />Start Date
                                <input id="minDateFilter" type="date" className="form-control mt-1 mx-auto" style={{ minWidth: 140, maxWidth: 180 }} value={startDate} onChange={e => setSidebarState(stationName || '', { startDate: e.target.value })} />
                            </label>
                            <label style={{ fontWeight: 500, width: '100%', textAlign: 'center' }}>
                                <i className="bi bi-calendar-date me-2" />End Date
                                <input id="maxDateFilter" type="date" className="form-control mt-1 mx-auto" style={{ minWidth: 140, maxWidth: 180 }} value={endDate} onChange={e => setSidebarState(stationName || '', { endDate: e.target.value })} />
                            </label>
                            {(startDate || endDate) && (
                                <button className="btn btn-outline-secondary btn-sm mt-2 mx-auto" type="button" onClick={() => {
                                    setSidebarState(stationName || '', { startDate: '', endDate: '' });
                                    // Also trigger change event for DataTables to clear filters
                                    setTimeout(() => {
                                        const minInput = document.getElementById('minDateFilter');
                                        const maxInput = document.getElementById('maxDateFilter');
                                        if (minInput) minInput.dispatchEvent(new Event('change', { bubbles: true }));
                                        if (maxInput) maxInput.dispatchEvent(new Event('change', { bubbles: true }));
                                    }, 0);
                                }}>
                                    Clear
                                </button>
                            )}
                        </div>
                    </div>
                </div>
            </div>
            {/* Removed sb-sidenav-footer with 'Logged in as: Start Bootstrap' */}
        </nav>
    );
};

export default SideNavigation;