from fastapi import FastAPI
from app.DB.database import engine, Base
from app.models.models import Produto


app = FastAPI()

Base.metadata.create_all(bind=engine)

from app.routes.produto_routes import produto_router

app.include_router(produto_router)

@app.get("/")
async def root():
    return {"message": "Hello World"}