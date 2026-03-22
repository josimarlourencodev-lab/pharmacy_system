from fastapi import APIRouter, HTTPException, Depends
from app.schemas.Produto_Schema import ProdutoResponse, ProdutoCreate , Produto , ProdutoUpdate
from sqlalchemy.orm import Session
from app.DB.get_db import  get_db
from app.models.models import Produto

produto_router = APIRouter(prefix="/produto", tags=["produto"])

@produto_router.get("/")
async def produto():
    return {"mensagem": "Você acessou a rota de produtos"}



# A ideia é que ele liste o produto com id de parâmetro da função
@produto_router.get("/obter/{produto_id}", response_model= ProdutoResponse) # ProdutoResponse schema com Pydantic.  
def obter_produto(Produto_id:int, db:Session = Depends(get_db)):
    produto = db.query(Produto).filter(Produto.id == Produto_id).first()
    if not produto:
        raise HTTPException(status_code=404, detail="Produto not found!")
    return produto    
    
@produto_router.post("/criar/", response_model=ProdutoResponse)    
def criar_produto(produto: ProdutoCreate, db:Session = Depends(get_db)):
    produto_novo = Produto(**produto.dict())
    db.add(produto_novo)
    db.commit()
    db.refresh(produto_novo)
    return produto_novo     

"""@produto_router.put("/atualizar/", response_model=ProdutoResponse)  isso não está funcionado eu não sei o porque ainda não sei como resolver
def atualizar_produto(produto:int, db:Session = Depends(get_db)):
    produto_atualizar = db.query(produto).filter(Produto.id == produto).first()
    if not produto:
        raise HTTPException(status_code=404, detail="Produto does not found!")

    for field, value in ProdutoUpdate.dict(exclude_unset=True).items():
        setattr(produto, field, value)

    db.commit()
    db.refresh(produto)
    return produto    """