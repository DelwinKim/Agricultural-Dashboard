# 🌐 [Agricultural Dashboard - Live Website](https://delwinkim.github.io/Agricultural-Dashboard/)

---

# Agricultural Dashboard

A comprehensive weather data dashboard for agricultural monitoring, built with Django and Flask backends, and a React frontend.

## Project Overview

This project provides a web-based dashboard for monitoring weather data from various agricultural weather stations across Texas. It includes data scraping, storage, visualization, and analysis capabilities.

## Project Structure

```
Agricultural-Dashboard/
├── backend/                    # Flask backend
│   ├── app/
│   │   ├── config/            # Configuration files
│   │   ├── models/            # SQLAlchemy models
│   │   ├── routes/            # API endpoints
│   │   └── utils/             # Utility functions
│   ├── app.py                 # Flask application
│   ├── cli.py                 # CLI commands
│   └── requirements.txt       # Python dependencies
├── frontend/                  # React frontend
│   ├── src/
│   │   ├── components/        # React components
│   │   ├── services/          # API services
│   │   └── styles/            # CSS styles
│   ├── package.json           # Node.js dependencies
│   └── public/                # Static files
├── BootstrapAgrilife/         # Django project settings
├── weatherdashboard/          # Django app
│   ├── management/           # Django management commands
│   ├── models.py             # Django models
│   ├── views.py              # Django views
│   └── utils/                # Utility functions
├── manage.py                 # Django management script
└── requirements.txt          # Django dependencies
```

## Features

### Data Collection
- **Web Scraping**: Automated scraping of weather data from Texas A&M AgriLife weather stations
- **Data Processing**: Parsing and cleaning of raw weather data
- **Multiple Data Types**: General weather, detailed weather, heat units, and chill units

### Data Storage
- **Database**: SQLite database for data persistence
- **Models**: Structured data models for different weather parameters
- **Data Integrity**: Duplicate prevention and data validation

### Data Visualization
- **Interactive Charts**: Line charts, bar charts, and pie charts
- **Data Tables**: Sortable and filterable data tables
- **Real-time Updates**: Recent weather data display

### User Interface
- **Responsive Design**: Works on desktop and mobile devices
- **Navigation**: Easy navigation between different views
- **Data Export**: CSV download functionality

## Weather Stations

The dashboard monitors weather data from the following stations in the Coastal Bend region:

- Corpus Christi Agrilife
- Corpus Christi North
- Corpus Christi South
- Dickinson
- Driscoll
- Freer
- Garwood
- Goliad
- Houston
- Houston North
- Kingsville
- Memorial Village
- Refugio
- Richmond North
- Richmond South
- Spring
- Victoria County West

## Weather Data Types

### General Weather Data
- ETO (Evapotranspiration)
- Maximum and minimum temperature
- Minimum relative humidity
- Solar radiation
- Rainfall
- Wind speed (4 AM and 4 PM)
- Battery levels

### Detailed Weather Data
- Average temperature
- Dew point (average, max, min)
- Wind run
- Soil temperature

### Heat Units Data
- Corn heat units
- Cotton heat units
- Sorghum heat units
- Heat units for different base temperatures (50°, 55°, 60°)

### Chill Units Data
- Seasonal chill units (Method 1 and Method 2)
- Monthly totals

## Technology Stack

### Backend
- **Django**: Main web framework
- **Flask**: Alternative API backend
- **SQLAlchemy**: Database ORM (Flask)
- **SQLite**: Database
- **BeautifulSoup**: Web scraping
- **Requests**: HTTP requests

### Frontend
- **React**: Frontend framework
- **TypeScript**: Type safety
- **Chart.js**: Data visualization
- **DataTables**: Table functionality
- **CSS3**: Styling