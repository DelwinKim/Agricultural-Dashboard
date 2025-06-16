import React from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import { Container } from 'react-bootstrap';
import Navigation from './components/Navigation';
import HomePage from './components/HomePage';
import StationPage from './components/StationPage';
import 'bootstrap/dist/css/bootstrap.min.css';

const App: React.FC = () => {
  return (
    <Router>
      <Navigation />
      <Container fluid className="mt-3">
        <Routes>
          <Route path="/" element={<HomePage />} />
          <Route path="/station/:stationName" element={<StationPage />} />
        </Routes>
      </Container>
    </Router>
  );
};

export default App;
