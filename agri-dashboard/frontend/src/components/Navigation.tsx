import React from 'react';
import { Navbar, Nav, Container } from 'react-bootstrap';
import { Link, useLocation } from 'react-router-dom';
import { List } from 'react-bootstrap-icons';
import RecentDataDropdown from './RecentDataDropdown';

interface NavigationProps {
  onToggleSidebar: () => void;
}

const Navigation: React.FC<NavigationProps> = ({ onToggleSidebar }) => {
  const location = useLocation();
  const isStationPage = location.pathname.startsWith('/station/');

  return (
    <Navbar className="sb-topnav navbar navbar-expand navbar-dark fixed-top">
      <Container fluid>
        {isStationPage ? (
          <button 
            className="btn btn-link btn-lg" 
            id="sidebarToggle" 
            onClick={onToggleSidebar}
          >
            <List size={24} />
          </button>
        ) : (
          <div className="btn btn-link btn-lg" style={{ opacity: 0, pointerEvents: 'none' }}>
            <List size={24} />
          </div>
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
          <Nav className="me-auto">
            <Nav.Link as={Link} to="/">Home</Nav.Link>
            <RecentDataDropdown />
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