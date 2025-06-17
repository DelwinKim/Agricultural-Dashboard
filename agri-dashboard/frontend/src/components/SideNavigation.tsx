import React, { useState, useEffect } from 'react';
import { Nav } from 'react-bootstrap';
import { Link, useLocation } from 'react-router-dom';
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
    ChevronRight
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
    const isStationPage = location.pathname.startsWith('/station/');
    const { showCharts, setShowCharts, showTables, setShowTables, activeCharts, setActiveCharts } = useSidebar();
    // On mount, use localStorage if present, otherwise use context default
    const getInitialTablesExpanded = () => {
        const stored = localStorage.getItem('sb|tables-accordion-open');
        if (stored !== null) return stored === 'true';
        return showTables;
    };
    const [tablesExpanded, setTablesExpanded] = useState(getInitialTablesExpanded);
    const [chartsExpanded, setChartsExpanded] = useState(false);

    // Keep tablesExpanded and showTables in sync
    useEffect(() => {
        setTablesExpanded(showTables);
        localStorage.setItem('sb|tables-accordion-open', showTables.toString());
    }, [showTables]);

    // Keep chartsExpanded and showCharts in sync
    useEffect(() => {
        setChartsExpanded(showCharts);
    }, [showCharts]);

    const toggleTables = () => {
        setShowTables(!showTables);
        // tablesExpanded will be updated by the useEffect above
    };

    const toggleCharts = () => {
        setChartsExpanded(!chartsExpanded);
        setShowCharts(!showCharts);
    };

    const handleChartToggle = (chartType: string) => {
        setActiveCharts(((prev: string[]) =>
            prev.includes(chartType)
                ? prev.filter((c: string) => c !== chartType)
                : [...prev, chartType]
        ) as unknown as string[]);
        setShowCharts(true);
    };

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
                                    className="btn btn-sm generalWeather-btn mb-2"
                                    data-table="generalWeatherTable"
                                    onClick={() => window.toggleTable('generalWeatherTable')}
                                >
                                    General Summary
                                </button>
                                <button 
                                    type="button"
                                    className="btn btn-sm detailedWeather-btn mb-2"
                                    data-table="detailedWeatherTable"
                                    onClick={() => window.toggleTable('detailedWeatherTable')}
                                >
                                    Detailed Summary
                                </button>
                                <button 
                                    type="button"
                                    className="btn btn-sm heatUnits-btn mb-2"
                                    data-table="heatUnitsTable"
                                    onClick={() => window.toggleTable('heatUnitsTable')}
                                >
                                    Heat Units
                                </button>
                                <button 
                                    type="button"
                                    className="btn btn-sm chillUnits-btn mb-2"
                                    data-table="seasonalChillUnitsTable"
                                    onClick={() => window.toggleTable('seasonalChillUnitsTable')}
                                >
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
                                    className={`btn btn-sm ${activeCharts.includes('temperature') ? 'btn-primary' : 'btn-secondary'} mb-2`}
                                    onClick={() => handleChartToggle('temperature')}
                                >
                                    <ThermometerHalf className="me-2" />
                                    Temperature
                                </button>
                                <button 
                                    className={`btn btn-sm ${activeCharts.includes('rainfall') ? 'btn-primary' : 'btn-secondary'} mb-2`}
                                    onClick={() => handleChartToggle('rainfall')}
                                >
                                    <Droplet className="me-2" />
                                    Rainfall
                                </button>
                                <button 
                                    className={`btn btn-sm ${activeCharts.includes('wind') ? 'btn-primary' : 'btn-secondary'} mb-2`}
                                    onClick={() => handleChartToggle('wind')}
                                >
                                    <Wind className="me-2" />
                                    Wind
                                </button>
                                <button 
                                    className={`btn btn-sm ${activeCharts.includes('humidity-dewpoint') ? 'btn-primary' : 'btn-secondary'} mb-2`}
                                    onClick={() => handleChartToggle('humidity-dewpoint')}
                                >
                                    <Droplet className="me-2" />
                                    Min RH & Dew Point
                                </button>
                                <button 
                                    className={`btn btn-sm ${activeCharts.includes('cumulative-heat-units') ? 'btn-primary' : 'btn-secondary'} mb-2`}
                                    onClick={() => handleChartToggle('cumulative-heat-units')}
                                >
                                    <Sun className="me-2" />
                                    Cumulative Heat Units
                                </button>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
            <div className="sb-sidenav-footer">
                <div className="small">Logged in as:</div>
                Start Bootstrap
            </div>
        </nav>
    );
};

export default SideNavigation;