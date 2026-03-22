# 💊 Sistema Logístico - Farmácia (API)

API backend para gerenciamento de produtos, fornecedores, clientes e vendas (PDV).

---

## 🎯 Objetivos

* Permitir cadastro de produtos, fornecedores e clientes
* Apoiar controle de estoque e pedidos
* Disponibilizar pesquisa de dados
* Suportar fluxo de vendas (PDV) e geração de relatórios

---

## 📌 Funcionalidades

* Cadastro de produtos
* Cadastro de fornecedores
* Cadastro de clientes
* Pesquisa (produtos, clientes e fornecedores)
* Venda de produtos (PDV)
* Relatórios de vendas

---

## 🧱 Estrutura do Projeto

```
farmacia_sistema/        # repositório
└── farmacia_api/        # projeto backend
    └── app/             # código principal da API
        ├── API/         # módulo principal (contém o main)
        ├── rotas/       # rotas da API (FastAPI)
        ├── models/      # modelos (SQLAlchemy)
        ├── schemas/     # validação (Pydantic)
        └── DB/          # conexão com banco
```

> A API está contida dentro de `app/`, e as demais pastas fazem parte da organização interna do backend.

---

## ⚙️ Requisitos

* Python 3.12+
* Poetry

### Stack

* FastAPI (backend web)

> Frontend não está no escopo atual.

---

## 📦 Gerenciamento de dependências (Poetry)

### 🔧 Instalação do Poetry

#### Linux / Mac

```bash
curl -sSL https://install.python-poetry.org | python3 -
```

#### Windows (PowerShell)

```powershell
(Invoke-WebRequest -Uri https://install.python-poetry.org -UseBasicParsing).Content | py -
```

Verificar instalação:

```bash
poetry --version
```

---

### 📥 Instalar dependências do projeto

```bash
poetry install
```

> Usa o `poetry.lock` para garantir versões exatas.

---

### ➕ Adicionar dependência

```bash
poetry add fastapi
```

Dependência de desenvolvimento:

```bash
poetry add pytest --group dev
```

---

### ❌ Remover dependência ☢️

```bash
poetry remove fastapi
```

---

### ▶️ Executar o projeto

```bash
poetry run uvicorn app.api.main:app --reload

```

---

### 🐚 Entrar no ambiente virtual

```bash
poetry shell
```

---

## 🔌 Rotas

> ⚠️ As rotas ainda estão em desenvolvimento e podem sofrer alterações.

Padrão atual:

* `/produtos/criar`
* `/produtos/obter/{id}`

---

## 🗄️ Modelo de Dados (Resumo)

### Produto

* nome
* preço
* quantidade
* unidade
* ponto de pedido
* lote econômico
* localização

### Fornecedor

* razão social
* nome fantasia
* CNPJ
* telefone
* email
* endereço

### Cliente

* nome
* telefone
* email
* endereço

---

## 📊 Fluxo do Sistema

1. Cadastro de dados (produto, cliente, fornecedor)
2. Pesquisa
3. Venda (PDV)
4. Geração de relatório

---

## 🚧 Status do Projeto

> O projeto ainda está em desenvolvimento.

### Funcionalidades

* Produtos → em andamento

  * [x] Criar
  * [x] Consultar
  * [ ] Atualizar
  * [ ] Deletar

* Fornecedores → não implementado

* Clientes → não implementado

* PDV → não implementado

* Relatórios → não implementado

---

## 📄 Licença

BSD 3-Clause License
