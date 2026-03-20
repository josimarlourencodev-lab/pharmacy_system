from sqlalchemy import Integer, String, Text, Float, Date
from sqlalchemy.orm import Mapped, mapped_column
from app.DB.database import Base  # chamando Base = declarative_base() do database.py

class Produto(Base):  # esse é a tabela produtos 
    __tablename__ = 'produtos'

    id: Mapped[int] = mapped_column(primary_key=True, autoincrement=True)
    linha: Mapped[int] = mapped_column(Integer, nullable=True)
    coluna: Mapped[int] = mapped_column(Integer, nullable=True)
    medicamento: Mapped[str] = mapped_column(String(50), nullable=True)
    principio_ativo: Mapped[str] = mapped_column(Text, nullable=False)
    #preco: Mapped[float] = mapped_column(Float, nullable=True)
    quantidade: Mapped[float] = mapped_column(Float, nullable=False)
    unidade_medida: Mapped[str] = mapped_column(String(10), nullable=False)
    fabricante: Mapped[str] = mapped_column(Text, nullable=False)
    lote_compras: Mapped[int] = mapped_column(Integer, nullable=False)
    validade: Mapped[Date] = mapped_column(Date, nullable=True)
    tarja: Mapped[str] = mapped_column(String(20), nullable=False)