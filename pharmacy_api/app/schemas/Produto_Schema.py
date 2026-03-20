from pydantic import BaseModel 
from datetime import date


class Produto(BaseModel):
    linha: int
    coluna: int
    medicamento: str
    principio_ativo: str
    #preco:float
    quantidade:float
    unidade_medida:str
    fabricante:str
    lote_compras:int
    validade: date 
    tarja: str

class ProdutoCreate(Produto):
    pass

class ProdutoUpdate(Produto):
    linha: int  | None = None
    coluna: int  | None = None
    medicamento: str | None = None
    principio_ativo: str | None = None
    #preco:float | None = None
    quantidade:float | None = None
    unidade_medida:str | None = None
    fabricante:str  | None = None
    lote_compras:int | None = None
    validade: date | None = None
    tarja: str | None = None

class ProdutoResponse(Produto):
    id: int
    linha: int
    coluna: int
    medicamento: str
    principio_ativo: str
    #preco:float
    quantidade:float
    unidade_medida:str
    fabricante:str
    lote_compras:int
    validade: date 
    tarja: str

    class config:
        from_attributes = True

