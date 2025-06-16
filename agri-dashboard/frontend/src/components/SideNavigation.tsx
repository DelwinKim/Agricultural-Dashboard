import React, { useEffect, useState } from 'react';
import { Nav } from 'react-bootstrap';
import { Link, useLocation } from 'react-router-dom';

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
    const [isCollapsed, setIsCollapsed] = useState(() => {
        return localStorage.getItem('sb|sidebar-toggle') === 'true';
    });
    const [tablesExpanded, setTablesExpanded] = useState(() => {
        return localStorage.getItem('sb|tables-accordion-open') !== 'false';
    });

    const location = useLocation();

    useEffect(() => {
        localStorage.setItem('sb|sidebar-toggle', isCollapsed.toString());
    }, [isCollapsed]);

    useEffect(() => {
        localStorage.setItem('sb|tables-accordion-open', tablesExpanded.toString());
    }, [tablesExpanded]);

    const toggleSidebar = () => {
        setIsCollapsed(!isCollapsed);
    };

    const toggleTables = () => {
        setTablesExpanded(!tablesExpanded);
    };

    const handleToggleTable = (tableId: string) => {
        if (window.toggleTable) {
            window.toggleTable(tableId);
        }
    };

    return (
        <nav className="sb-sidenav accordion sb-sidenav-light" id="sidenavAccordion">
            <div className="sb-sidenav-menu">
                <div className="nav">
                    <div className="sb-sidenav-menu-heading">Data View Options</div>
                    <a 
                        className={`nav-link ${tablesExpanded ? '' : 'collapsed'}`} 
                        href="#" 
                        data-bs-toggle="collapse" 
                        data-bs-target="#collapseTables" 
                        aria-expanded={tablesExpanded} 
                        aria-controls="collapseTables"
                        onClick={toggleTables}
                    >
                        <div className="sb-nav-link-icon">
                            <i className="fas fa-table"></i>
                        </div>
                        Tables
                        <div className="sb-sidenav-collapse-arrow">
                            <i className="fas fa-angle-down"></i>
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