-- models/raw/vendas.sql
select * from {{ source('public', 'vendas') }}
