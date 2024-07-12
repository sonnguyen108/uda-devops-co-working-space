import logging
import os

#install .env
from dotenv import load_dotenv
load_dotenv()

from flask import Flask
from flask_sqlalchemy import SQLAlchemy

# db_username = os.environ["DB_USERNAME"]
# db_password = os.environ["DB_PASSWORD"]
# db_host = os.environ.get("DB_HOST", "127.0.0.1")
# db_port = os.environ.get("DB_PORT", "5432")
# db_name = os.environ.get("DB_NAME", "postgres")

db_username = os.getenv("DB_USERNAME")
db_password = os.getenv("DB_PASSWORD")
db_host = os.getenv("DB_HOST", "127.0.0.1")
db_port = os.getenv("DB_PORT", "5432")
db_name = os.getenv("DB_NAME", "postgres")

app = Flask(__name__)
app.config["SQLALCHEMY_DATABASE_URI"] = f"postgresql://{db_username}:{db_password}@{db_host}:{db_port}/{db_name}"

db = SQLAlchemy(app)

app.logger.setLevel(logging.DEBUG)
