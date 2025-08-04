# Projeto Estudo DBT

Este projeto utiliza o [dbt (data build tool)](https://www.getdbt.com/) para criar uma arquitetura de dados modelada em camadas (staging, intermediária e final) com base em arquivos CSV.
---
## 📁 Estrutura do Projeto

Abaixo tem uma visão básica da estrutura do projeto:

```
dbt/
├── apostila/
│   └── Tutorial DBT - EM DESENVOLVIMENTO.docx
├── data/
│   ├── clientes.csv
│   ├── fornecedores.csv
│   ├── produtos.csv
│   ├── regioes.csv
│   └── vendas.csv
├── dbt_packages/
│   └── dbt_utils
├── logs
├── models/
│   └── bronze
│   └── gold
│   └── raw
│   └── silver
├── scripts/
│   ├── banco_dados
│   ├── comandos_sql
├── target/
├── dbt_project.yml
├── packages.yml
├── profiles.yml
├── Readme.md
├── criando_ambiente_virtual.txt
└── requirements.txt
```

## 📦 Dependências

As dependências do projeto estão listadas em:

- `requirements.txt`: bibliotecas Python necessárias
- `packages.yml`: pacotes dbt, como `dbt_utils`

## 🧪 Dados de Entrada

Os seguintes arquivos CSV estão localizados em `data/` e são utilizados como fontes de dados:

- `clientes.csv`
- `fornecedores.csv`
- `produtos.csv`
- `regioes.csv`
- `vendas.csv`

## ⚙️ Configuração

1. Crie e ative um ambiente virtual, no prompt digite:
   ```bash
   $ python -m venv venv
   $ source venv/bin/activate  # Linux/macOS
   $ venv\Scripts\activate  # Windows
   ```

2. Instale as dependências:
   ```bash
   pip install -r requirements.txt
   ```

3. Configure a conexão com o banco de dados, renomei o arquivo `profiles_example.yml` para `profiles.yml` inserindo as configurações do servidor Postgres.

4. Execute os comandos dbt:
   ```bash
   dbt deps        # Instala os pacotes definidos em packages.yml
   dbt seed        # Carrega os CSVs em tabelas do banco
   dbt run         # Executa os modelos
   dbt test        # Executa os testes
   ```

## 🧾 Documentação

Veja a apostila em `apostila/Tutorial DBT.pdf` para mais detalhes sobre o funcionamento e boas práticas no uso do dbt.


> Projeto criado com fins educacionais para estudo de engenharia de dados e modelagem com dbt.


## 👨‍💻 Sobre

Autor: Thiago Vilarinho Lemes <br>
LinkedIn <a href="https://www.linkedin.com/in/thiago-v-lemes-b1232727" target="_blank">Thiago Lemes</a><br>
e-mail: contatothiagolemes@gmail.com | lemes_vilarinho@yahoo.com.br
