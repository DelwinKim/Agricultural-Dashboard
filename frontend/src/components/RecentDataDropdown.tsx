import React, { useState } from 'react';
import { NavDropdown } from 'react-bootstrap';
import { Link } from 'react-router-dom';
import HoverNavDropdown from './HoverNavDropdown';

const REGIONS_AND_STATIONS = {
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

const RecentDataDropdown: React.FC = () => {
    const [activeRegion, setActiveRegion] = useState<string | null>(null);

    return (
        <NavDropdown
            title={
                <span>
                    <i className="fas fa-clock me-1"></i>
                    Recent Data
                </span>
            }
            id="recent-data-dropdown"
        >
            {Object.entries(REGIONS_AND_STATIONS).map(([region, stations]) => (
                <NavDropdown.Item 
                    key={region} 
                    as="div" 
                    className="dropdown-submenu"
                    onMouseEnter={() => setActiveRegion(region)}
                    onMouseLeave={() => setActiveRegion(null)}
                >
                    <HoverNavDropdown 
                        title={region} 
                        id={`${region}-dropdown`}
                        className="dropdown-submenu"
                        show={activeRegion === region}
                    >
                        {stations.map((station) => (
                            <NavDropdown.Item 
                                key={station} 
                                as={Link} 
                                to={`/station/${encodeURIComponent(station)}`}
                            >
                                {station}
                            </NavDropdown.Item>
                        ))}
                    </HoverNavDropdown>
                </NavDropdown.Item>
            ))}
        </NavDropdown>
    );
};

export default RecentDataDropdown;