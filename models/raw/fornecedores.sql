-- models/raw/fornecedores.sql
select * from {{ source('public', 'fornecedores') }}
