from .database import SessionLocal

def get_db():
    db = SessionLocal()
  
    try:
        yield db  
        print("Conectou ao banco com sucesso!")
    finally:
        db.close()   

get_db()