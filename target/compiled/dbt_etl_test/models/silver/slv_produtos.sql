-- models/silver/slv_produtos.sql
-- Não é necessário materializar como tabela, pois é uma view e já está configurado no dbt_project.yml
 
select 
    p.produto_id,
    p.nome,
    p.categoria,
    p.preco,
    f.empresa as fornecedor_nome
from "dbt_test"."public_bronze"."brz_produtos" p
left join "dbt_test"."public_bronze"."brz_fornecedores" f
    on p.fornecedor_id = f.fornecedor_id