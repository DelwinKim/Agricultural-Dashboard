import React, { useState } from 'react';
import { BrowserRouter as Router, Routes, Route, useLocation } from 'react-router-dom';
import Navigation from './components/Navigation';
import SideNavigation from './components/SideNavigation';
import HomePage from './components/HomePage';
import StationPage from './components/StationPage';
import { Container } from 'react-bootstrap';
import 'bootstrap/dist/css/bootstrap.min.css';

// Create a wrapper component to handle the layout
const Layout = ({ children }: { children: React.ReactNode }) => {
  const location = useLocation();
  const isStationPage = location.pathname.startsWith('/station/');
  const [isSidebarCollapsed, setIsSidebarCollapsed] = useState(false);
  const [activeTables, setActiveTables] = useState({
    generalWeather: true,
    detailedWeather: false,
    heatUnits: false,
    chillUnits: false
  });

  const toggleSidebar = () => {
    setIsSidebarCollapsed(!isSidebarCollapsed);
    document.body.classList.toggle('sb-sidenav-toggled');
  };

  const handleToggleTable = (tableName: string) => {
    setActiveTables(prev => ({
      ...prev,
      [tableName]: !prev[tableName as keyof typeof prev]
    }));
  };

  return (
    <>
      <Navigation onToggleSidebar={toggleSidebar} />
      <div id="layoutSidenav">
        {isStationPage && (
          <div id="layoutSidenav_nav" className={isSidebarCollapsed ? 'sb-sidenav-toggled' : ''}>
            <SideNavigation 
              onToggleTable={handleToggleTable}
              activeTables={activeTables}
            />
          </div>
        )}
        <div id="layoutSidenav_content" className={isStationPage && isSidebarCollapsed ? 'sb-sidenav-toggled' : ''}>
          <main>
            <Container fluid className="px-4">
              {children}
            </Container>
          </main>
        </div>
      </div>
    </>
  );
};

function App() {
  return (
    <Router>
      <Routes>
        <Route path="/" element={
          <Layout>
            <HomePage />
          </Layout>
        } />
        <Route path="/station/:stationName" element={
          <Layout>
            <StationPage />
          </Layout>
        } />
      </Routes>
    </Router>
  );
}

export default App;
