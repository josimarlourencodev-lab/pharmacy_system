from fastapi import APIRouter

produto_router = APIRouter(prefix="/produto", tags=["produto"])

@produto_router.get("/")
async def produto():
    return {"mensagem": "Você acessou a rota de produtos"}