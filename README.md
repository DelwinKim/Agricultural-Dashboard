# Agricultural Dashboard

A comprehensive weather data dashboard for agricultural monitoring, built with Django and Flask backends, and a React frontend.

## Project Overview

This project provides a web-based dashboard for monitoring weather data from various agricultural weather stations across Texas. It includes data scraping, storage, visualization, and analysis capabilities.

## Project Structure

```
Agricultural-Dashboard/
├── agri-dashboard/                 # Flask backend
│   ├── backend/
│   │   ├── app/
│   │   │   ├── config/            # Configuration files
│   │   │   ├── models/            # SQLAlchemy models
│   │   │   ├── routes/            # API endpoints
│   │   │   └── utils/             # Utility functions
│   │   ├── app.py                 # Flask application
│   │   ├── cli.py                 # CLI commands
│   │   └── requirements.txt       # Python dependencies
│   └── frontend/                  # React frontend
│       ├── src/
│       │   ├── components/        # React components
│       │   ├── services/          # API services
│       │   └── styles/            # CSS styles
│       ├── package.json           # Node.js dependencies
│       └── public/                # Static files
├── BootstrapAgrilife/             # Django project settings
├── weatherdashboard/              # Django app
│   ├── management/               # Django management commands
│   ├── models.py                 # Django models
│   ├── views.py                  # Django views
│   └── utils/                    # Utility functions
├── manage.py                     # Django management script
└── requirements.txt              # Django dependencies
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

### Development Tools
- **Git**: Version control
- **Docker**: Containerization (optional)
- **CLI Tools**: Custom management commands

## Installation

### Prerequisites
- Python 3.8+
- Node.js 14+
- npm or yarn

### Django Backend Setup

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd Agricultural-Dashboard
   ```

2. **Create virtual environment**
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

3. **Install dependencies**
   ```bash
   pip install -r requirements.txt
   ```

4. **Run migrations**
   ```bash
   python manage.py migrate
   ```

5. **Create superuser (optional)**
   ```bash
   python manage.py createsuperuser
   ```

6. **Run the development server**
   ```bash
   python manage.py runserver
   ```

### Flask Backend Setup

1. **Navigate to Flask directory**
   ```bash
   cd agri-dashboard/backend
   ```

2. **Create virtual environment**
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

3. **Install dependencies**
   ```bash
   pip install -r requirements.txt
   ```

4. **Initialize database**
   ```bash
   flask db init
   flask db migrate
   flask db upgrade
   ```

5. **Run the development server**
   ```bash
   flask run
   ```

### Frontend Setup

1. **Navigate to frontend directory**
   ```bash
   cd agri-dashboard/frontend
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Start development server**
   ```bash
   npm start
   ```

## Usage

### Data Scraping

#### Django
```bash
# Scrape data for all stations
python manage.py scrape_data

# Update weather data from .dat file
python manage.py update_weather_data /path/to/file.dat

# Export data to CSV
python manage.py export_data

# Delete all data
python manage.py delete_all_data
```

#### Flask
```bash
# Populate stations
flask populate_stations

# Scrape data for all stations
flask scrape_data

# Update weather data from .dat file
flask update_weather_data /path/to/file.dat

# Export data to CSV
flask export_data

# Delete all data
flask delete_all_data
```

### Web Interface

1. **Access the dashboard**: Open your browser and navigate to `http://localhost:8000` (Django) or `http://localhost:5000` (Flask)

2. **View recent weather**: The home page displays recent weather data for all stations

3. **Station details**: Click on a station to view detailed weather information

4. **Data tables**: Navigate through different data types (General, Detailed, Heat Units, Chill Units)

5. **Download data**: Use the download functionality to export data as CSV

## API Endpoints

### Django API
- `GET /api/stations/` - Get all weather stations
- `GET /api/weather/general/` - Get general weather data
- `GET /api/weather/detailed/` - Get detailed weather data
- `GET /api/weather/heat-units/` - Get heat units data
- `GET /api/weather/chill-units/` - Get chill units data
- `GET /api/recent-weather` - Get recent weather data
- `POST /api/download-data` - Download data as CSV

### Flask API
- `GET /api/stations` - Get all weather stations
- `GET /api/weather/general/` - Get general weather data
- `GET /api/weather/detailed/` - Get detailed weather data
- `GET /api/weather/heat-units/` - Get heat units data
- `GET /api/weather/chill-units/` - Get chill units data
- `GET /api/recent-weather` - Get recent weather data
- `POST /api/download-data` - Download data as CSV

## Configuration

### Environment Variables
Create a `.env` file in the project root with the following variables:

```env
DEBUG=True
SECRET_KEY=your-secret-key
DATABASE_URL=sqlite:///weather.db
ALLOWED_HOSTS=localhost,127.0.0.1
```

### Database Configuration
The project uses SQLite by default. To use a different database:

1. **PostgreSQL**: Update `DATABASE_URL` in settings
2. **MySQL**: Install `mysqlclient` and update database settings

## Development

### Code Style
- **Python**: Follow PEP 8 guidelines
- **JavaScript/TypeScript**: Use ESLint and Prettier
- **CSS**: Follow BEM methodology

### Testing
```bash
# Run Django tests
python manage.py test

# Run Flask tests
python -m pytest
```

### Contributing
1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests
5. Submit a pull request

## Troubleshooting

### Common Issues

1. **Database connection errors**
   - Check database URL configuration
   - Ensure database file permissions

2. **Scraping failures**
   - Check internet connection
   - Verify website structure hasn't changed
   - Check rate limiting

3. **Frontend build errors**
   - Clear node_modules and reinstall
   - Check Node.js version compatibility

### Logs
- Django logs: `logs/django.log`
- Flask logs: Console output
- Frontend logs: Browser developer tools

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- Texas A&M AgriLife Extension Service for providing weather data
- Open source community for various libraries and tools
- Contributors and maintainers

## Support

For support and questions:
- Create an issue on GitHub
- Contact the development team
- Check the documentation

## Roadmap

- [ ] Real-time data updates
- [ ] Mobile app development
- [ ] Advanced analytics
- [ ] Weather forecasting
- [ ] Alert system
- [ ] User authentication
- [ ] Multi-language support 