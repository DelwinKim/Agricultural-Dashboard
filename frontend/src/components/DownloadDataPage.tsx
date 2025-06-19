import React, { useState, useEffect } from 'react';
import { Form, Button, Container, Row, Col } from 'react-bootstrap';
import Select, { SingleValue, MultiValue } from 'react-select';
import api from '../services/api';
import { WeatherStation } from '../types';

interface Field {
    value: string;
    label: string;
}

interface StationOption {
    value: number;
    label: string;
}

const DownloadDataPage: React.FC = () => {
    const [stations, setStations] = useState<WeatherStation[]>([]);
    const [selectedStation, setSelectedStation] = useState<WeatherStation | null>(null);
    const [startDate, setStartDate] = useState<string>('');
    const [endDate, setEndDate] = useState<string>('');
    const [selectedFields, setSelectedFields] = useState<Field[]>([]);

    const fieldOptions: Field[] = [
        { value: 'eto', label: 'ETo (in.)' },
        { value: 'max_temp', label: 'Max Temp (°F)' },
        { value: 'min_temp', label: 'Min Temp (°F)' },
        { value: 'min_rh', label: 'Min RH (%)' },
        { value: 'solar_rad', label: 'Solar Radiation (MJ/m²)' },
        { value: 'rainfall', label: 'Rainfall (in.)' },
        { value: 'wind_4am', label: 'Wind 4am (mph)' },
        { value: 'wind_4pm', label: 'Wind 4pm (mph)' },
        { value: 'battery_min', label: 'Battery Min (V)' },
        { value: 'battery_max', label: 'Battery Max (V)' },
        { value: 'average_temp', label: 'Average Temp (°F)' },
        { value: 'dew_point', label: 'Dew Point (°F)' },
        { value: 'max_dewpoint', label: 'Max Dewpoint (°F)' },
        { value: 'min_dewpoint', label: 'Min Dewpoint (°F)' },
        { value: 'wind_run', label: 'Wind Run (miles)' },
        { value: 'soil_temp', label: 'Soil Temp (°F)' },
        { value: 'corn_heat_units', label: 'Corn Heat Units' },
        { value: 'cotton_heat_units', label: 'Cotton Heat Units' },
        { value: 'sorghum_heat_units', label: 'Sorghum Heat Units' },
        { value: 'heat_units_50_degree', label: 'Heat Units 50°F' },
        { value: 'heat_units_55_degree', label: 'Heat Units 55°F' },
        { value: 'heat_units_60_degree', label: 'Heat Units 60°F' }
    ];

    useEffect(() => {
        const fetchStations = async () => {
            try {
                const data = await api.getStations();
                setStations(data);
            } catch (error) {
                console.error('Error fetching stations:', error);
            }
        };

        fetchStations();
    }, []);

    const handleSubmit = async (e: React.FormEvent) => {
        e.preventDefault();
        if (!selectedStation || !startDate || !endDate || selectedFields.length === 0) {
            alert('Please fill in all fields');
            return;
        }

        try {
            const response = await api.downloadData({
                station: selectedStation.id,
                start_date: startDate,
                end_date: endDate,
                fields: selectedFields.map(field => field.value)
            });

            // Create a blob from the response data
            const blob = new Blob([response.data], { type: 'text/csv' });
            const url = window.URL.createObjectURL(blob);
            const a = document.createElement('a');
            a.href = url;
            a.download = `weather_data_${selectedStation.name}_${startDate}_${endDate}.csv`;
            document.body.appendChild(a);
            a.click();
            window.URL.revokeObjectURL(url);
            document.body.removeChild(a);
        } catch (error) {
            console.error('Error downloading data:', error);
            alert('Error downloading data. Please try again.');
        }
    };

    const handleStationChange = (option: SingleValue<StationOption>) => {
        if (option) {
            const station = stations.find(s => s.id === option.value);
            if (station) {
                setSelectedStation(station);
            }
        } else {
            setSelectedStation(null);
        }
    };

    return (
        <div style={{ minHeight: '80vh', background: 'linear-gradient(135deg, #f8fafc 0%, #e9f7ef 100%)', padding: '40px 0', display: 'flex', alignItems: 'center', justifyContent: 'center' }}>
            <Container>
                <div className="mx-auto" style={{ maxWidth: 650 }}>
                    <div className="card shadow-lg border-0 p-4" style={{ borderRadius: 18 }}>
                        <div className="card-body">
                            <h2 className="mb-4 text-center" style={{ fontWeight: 700, color: '#198754', letterSpacing: 1 }}>Download Weather Data</h2>
                            <Form onSubmit={handleSubmit}>
                                <Row>
                                    <Col md={12} className="mb-3">
                                        <Form.Group>
                                            <Form.Label className="fw-bold">Weather Station</Form.Label>
                                            <Select<StationOption>
                                                options={stations.map(station => ({
                                                    value: station.id,
                                                    label: station.name
                                                }))}
                                                value={selectedStation ? {
                                                    value: selectedStation.id,
                                                    label: selectedStation.name
                                                } : null}
                                                onChange={handleStationChange}
                                                placeholder="Select a station"
                                                styles={{ menu: base => ({ ...base, zIndex: 9999 }) }}
                                            />
                                        </Form.Group>
                                    </Col>
                                </Row>
                                <Row>
                                    <Col md={6} className="mb-3">
                                        <Form.Group>
                                            <Form.Label className="fw-bold">Start Date</Form.Label>
                                            <Form.Control
                                                type="date"
                                                value={startDate}
                                                onChange={(e) => setStartDate(e.target.value)}
                                            />
                                        </Form.Group>
                                    </Col>
                                    <Col md={6} className="mb-3">
                                        <Form.Group>
                                            <Form.Label className="fw-bold">End Date</Form.Label>
                                            <Form.Control
                                                type="date"
                                                value={endDate}
                                                onChange={(e) => setEndDate(e.target.value)}
                                            />
                                        </Form.Group>
                                    </Col>
                                </Row>
                                <Row>
                                    <Col md={12} className="mb-3">
                                        <Form.Group>
                                            <Form.Label className="fw-bold">Fields to Include</Form.Label>
                                            <Select<Field, true>
                                                isMulti
                                                options={fieldOptions}
                                                value={selectedFields}
                                                onChange={(newValue) => setSelectedFields(newValue as Field[])}
                                                placeholder="Select fields to include"
                                                closeMenuOnSelect={false}
                                                styles={{ menu: base => ({ ...base, zIndex: 9999 }) }}
                                            />
                                        </Form.Group>
                                    </Col>
                                </Row>
                                <Row>
                                    <Col md={12} className="text-center mt-3">
                                        <Button type="submit" variant="success" size="lg" style={{ borderRadius: 8, fontWeight: 600, padding: '10px 32px', letterSpacing: 1 }}>
                                            <i className="fas fa-download me-2"></i>
                                            Download Data
                                        </Button>
                                    </Col>
                                </Row>
                            </Form>
                        </div>
                    </div>
                </div>
            </Container>
        </div>
    );
};

export default DownloadDataPage;