from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker
from dotenv import load_dotenv

load_dotenv()
import os  # noqa: E402
DB_URL = DB_URL = os.getenv("DB_URL")
engine = create_engine(DB_URL,connect_args={"check_same_thread": False},echo=True)
SessionLocal = sessionmaker(autocommit=False,autoflush=False, bind=engine)

Base = declarative_base()