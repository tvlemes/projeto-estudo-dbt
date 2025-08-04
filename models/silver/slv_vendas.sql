-- models/silver/slv_vendas.sql
-- Não é necessário materializar como tabela, pois é uma view e já está configurado no dbt_project.yml
{{ config(materialized='table', schema='silver') }}

select 
    v.venda_id,
    v.data_venda,
    v.quantidade,
    v.produto_id,
    v.cliente_id,
    v.regiao_id,
    c.nome as cliente_nome,
    r.uf,
    r.cidade as cidade_regiao,
    p.nome as nome_produto,
    p.preco,
    (v.quantidade * p.preco) as total_venda
from {{ ref('brz_vendas') }} v
left join {{ ref('brz_clientes') }} c on v.cliente_id = c.cliente_id
left join {{ ref('brz_regioes') }} r on v.regiao_id = r.regiao_id
left join {{ ref('brz_produtos') }} p on v.produto_id = p.produto_id