import React from 'react';
import { Navbar, Nav, Container, Button, Dropdown } from 'react-bootstrap';
import { Link, useLocation } from 'react-router-dom';

interface NavigationProps {
  onToggleSidebar: () => void;
}

const Navigation: React.FC<NavigationProps> = ({ onToggleSidebar }) => {
  const location = useLocation();
  const isStationPage = location.pathname.startsWith('/station/');

  return (
    <Navbar className="sb-topnav navbar navbar-expand navbar-dark fixed-top">
      <Container fluid>
        {isStationPage && (
          <button 
            className="btn btn-link btn-lg order-1 order-lg-0 me-4 me-lg-0" 
            id="sidebarToggle" 
            onClick={onToggleSidebar}
          >
            <i className="fas fa-bars"></i>
          </button>
        )}
        <Navbar.Brand as={Link} to="/">
          <img 
            src="/images/image.png" 
            alt="AgriLife Logo" 
            style={{ 
              height: '100%', 
              width: 'auto',
              maxHeight: '60px',
              objectFit: 'contain'
            }} 
          />
        </Navbar.Brand>
        <Navbar.Toggle aria-controls="basic-navbar-nav" />
        <Navbar.Collapse id="basic-navbar-nav">
          <Nav className="ms-auto">
            <Nav.Link as={Link} to="/">Home</Nav.Link>
            <Nav.Link as={Link} to="/recent-data">
              <i className="fas fa-clock me-1"></i>
              Recent Data
            </Nav.Link>
            <Nav.Link as={Link} to="/download-data">
              <i className="fas fa-download me-1"></i>
              Download Data
            </Nav.Link>
           </Nav>
        </Navbar.Collapse>
      </Container>
    </Navbar>
  );
};

export default Navigation; 