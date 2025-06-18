from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_cors import CORS
from app.config.config import Config
import logging
from sqlalchemy import text

# Configure logging
logging.basicConfig(level=logging.DEBUG)
logger = logging.getLogger(__name__)

db = SQLAlchemy()

def create_app(config_class=Config):
    app = Flask(__name__)
    app.config.from_object(config_class)

    # Log database URI (without password)
    db_uri = app.config['SQLALCHEMY_DATABASE_URI']
    if db_uri:
        masked_uri = db_uri.replace(db_uri.split('@')[0], '***')
        logger.info(f"Connecting to database: {masked_uri}")
    else:
        logger.error("No database URI configured!")

    # Initialize extensions
    db.init_app(app)
    
    # Configure CORS
    CORS(app, resources={
        r"/api/*": {
            "origins": ["http://localhost:3001", "http://localhost:3000", "https://delwinkim.github.io/Agricultural-Dashboard/"],
            "methods": ["GET", "POST", "OPTIONS"],
            "allow_headers": ["Content-Type", "Authorization", "X-Requested-With"]
        }
    })

    # Register blueprints
    from app.routes.weather import weather_bp
    app.register_blueprint(weather_bp, url_prefix='/api')

    # Test database connection
    with app.app_context():
        try:
            # Try to execute a simple query
            db.session.execute(text('SELECT 1'))
            logger.info("Database connection successful!")
            
            # Log table names
            inspector = db.inspect(db.engine)
            tables = inspector.get_table_names()
            logger.info(f"Available tables: {tables}")
            
            # Create tables if they don't exist
            db.create_all()
        except Exception as e:
            logger.error(f"Database connection failed: {str(e)}")
            raise

    return app 