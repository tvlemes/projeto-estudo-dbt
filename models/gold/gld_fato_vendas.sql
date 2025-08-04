-- models/gold/gld_fato_vendas.sql
{{ config(materialized='table', schema='gold') }}
select 
    extract(year from data_venda) as ano,
    uf,
    nome_produto,
    sum(quantidade) as total_itens,
    sum(total_venda) as receita_total
from {{ ref('slv_vendas') }}
group by 1, 2, 3
order by ano, receita_total desc