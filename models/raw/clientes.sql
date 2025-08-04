-- models/raw/clientes.sql
select * from {{ source('public', 'clientes') }}
