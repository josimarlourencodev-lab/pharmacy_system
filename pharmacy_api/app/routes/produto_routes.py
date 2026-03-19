from fastapi import APIRouter
from sqlalchemy import text 

produto_router = APIRouter(prefix="/produto", tags=["produto"])

@produto_router.get("/")
async def produto():
    return {"mensagem": "Você acessou a rota de produtos"}



# A ideia é que ele liste o produto com id de parâmetro da função
@produto_router.get("/listar") # Eu não sei como fazer isso ainda da forma que estou pensando, parece que vou ter que fazer um schema com Pydantic.  
def listar():
   """ listar_produtos = text('select id_produto, medicamento, preco from produtos') 
    con.execute(listar_produtos)"""
pass 
