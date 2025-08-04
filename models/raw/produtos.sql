-- models/raw/produtos.sql
select * from {{ source('public', 'produtos') }}
