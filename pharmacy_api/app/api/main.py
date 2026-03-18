from fastapi import FastAPI

app = FastAPI()

from app.routes.produto_routes import produto_router

app.include_router(produto_router)

@app.get("/")
async def root():
    return {"message": "Hello World"}