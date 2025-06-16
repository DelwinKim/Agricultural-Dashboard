import React, { useEffect, useState } from 'react';
import { Nav, Accordion } from 'react-bootstrap';
import { Link, useLocation } from 'react-router-dom';

const SideNavigation: React.FC = () => {
    const [isCollapsed, setIsCollapsed] = useState(() => {
        return localStorage.getItem('sb|sidebar-toggle') === 'true';
    });
    const [tablesExpanded, setTablesExpanded] = useState(() => {
        return localStorage.getItem('sb|tables-accordion-open') !== 'false';
    });

    const location = useLocation();

    useEffect(() => {
        // Save sidebar state
        localStorage.setItem('sb|sidebar-toggle', isCollapsed.toString());
    }, [isCollapsed]);

    useEffect(() => {
        // Save tables accordion state
        localStorage.setItem('sb|tables-accordion-open', tablesExpanded.toString());
    }, [tablesExpanded]);

    const toggleSidebar = () => {
        setIsCollapsed(!isCollapsed);
    };

    const toggleTables = () => {
        setTablesExpanded(!tablesExpanded);
    };

    return (
        <div className={`sb-sidenav ${isCollapsed ? 'sb-sidenav-toggled' : ''}`}>
            <div className="sb-sidenav-menu">
                <div className="nav">
                    <div className="sb-sidenav-menu-heading">Core</div>
                    <Link 
                        className={`nav-link ${location.pathname === '/' ? 'active' : ''}`}
                        to="/"
                    >
                        <div className="sb-nav-link-icon">
                            <i className="fas fa-tachometer-alt"></i>
                        </div>
                        Dashboard
                    </Link>

                    <div className="sb-sidenav-menu-heading">Interface</div>
                    <Accordion activeKey={tablesExpanded ? 'tables' : undefined}>
                        <Accordion.Item eventKey="tables">
                            <Accordion.Header onClick={toggleTables}>
                                <div className="sb-nav-link-icon">
                                    <i className="fas fa-table"></i>
                                </div>
                                Tables
                            </Accordion.Header>
                            <Accordion.Body>
                                <Nav className="sb-sidenav-menu-nested nav">
                                    <Link 
                                        className={`nav-link ${location.pathname.startsWith('/station/') ? 'active' : ''}`}
                                        to="/station/Corpus Christi Agrilife"
                                    >
                                        Weather Data
                                    </Link>
                                </Nav>
                            </Accordion.Body>
                        </Accordion.Item>
                    </Accordion>
                </div>
            </div>
            <div className="sb-sidenav-footer">
                <div className="small">Logged in as:</div>
                Start Bootstrap
            </div>
        </div>
    );
};

export default SideNavigation; 