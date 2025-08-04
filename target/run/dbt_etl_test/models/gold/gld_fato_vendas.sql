
  
    

  create  table "dbt_test"."public_gold"."gld_fato_vendas__dbt_tmp"
  
  
    as
  
  (
    -- models/gold/gld_fato_vendas.sql

select 
    extract(year from data_venda) as ano,
    uf,
    nome_produto,
    sum(quantidade) as total_itens,
    sum(total_venda) as receita_total
from "dbt_test"."public_silver"."slv_vendas"
group by 1, 2, 3
order by ano, receita_total desc
  );
  