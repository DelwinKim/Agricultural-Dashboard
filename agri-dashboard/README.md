# Agricultural Dashboard

A weather dashboard application built with Flask and React-Bootstrap.

## Project Structure

```
agri-dashboard/
├── backend/           # Flask backend
│   ├── app.py        # Main Flask application
│   └── requirements.txt
└── frontend/         # React frontend
    ├── src/
    │   ├── components/
    │   ├── services/
    │   └── types.ts
    └── package.json
```

## Setup Instructions

### Backend Setup

1. Create a virtual environment:
```bash
cd backend
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
```

2. Install dependencies:
```bash
pip install -r requirements.txt
```

3. Set up environment variables:
Create a `.env` file in the backend directory with:
```
DATABASE_URL=sqlite:///weather.db
```

4. Run the Flask application:
```bash
python app.py
```

The backend will be available at `http://localhost:5000`

### Frontend Setup

1. Install dependencies:
```bash
cd frontend
npm install
```

2. Create a `.env` file in the frontend directory with:
```
REACT_APP_API_URL=http://localhost:5000/api
```

3. Start the development server:
```bash
npm start
```

The frontend will be available at `http://localhost:3000`

## Features

- View weather data for multiple stations
- Detailed weather information including:
  - General weather data
  - Detailed weather data
  - Heat units
  - Chill units
- Responsive design using React-Bootstrap
- Real-time data updates

## Technologies Used

- Backend:
  - Flask
  - SQLAlchemy
  - Flask-CORS

- Frontend:
  - React
  - TypeScript
  - React-Bootstrap
  - React Router
  - Axios 