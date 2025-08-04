-- Comandos SQL para manipulação de dados no PostgreSQL

-- Apagar dados das tabelas
TRUNCATE TABLE vendas, produtos, clientes, fornecedores, regioes CASCADE;

---------------------------------------------------------------------------------

-- Selecionar dados das tabelas
select * from public_gold.gld_fato_vendas;
select * from public_silver.slv_produtos;
select * from public_bronze.brz_clientes;
select * from raw.clientes;

---------------------------------------------------------------------------------

-- Camanda Raw
SELECT cliente_id, nome, email, cidade, estado
	FROM public.clientes LIMIT 10;
SELECT fornecedor_id, empresa, telefone, cidade, estado
	FROM public.fornecedores LIMIT 10;
SELECT produto_id, nome, categoria, preco, fornecedor_id
	FROM public.produtos LIMIT 10;
SELECT regiao_id, uf, cidade
	FROM public.regioes LIMIT 10;
SELECT venda_id, produto_id, cliente_id, quantidade, data_venda, regiao_id
	FROM public.vendas LIMIT 10;

---------------------------------------------------------------------------------

-- Camada Silver
-- models/silver/slv_produtos.sql
select 
    p.produto_id,
    p.nome,
    p.categoria,
    p.preco,
    f.empresa as fornecedor_nome
from public_bronze.brz_produtos p
left join public_bronze.brz_fornecedores f
    on p.fornecedor_id = f.fornecedor_id

-- models/silver/slv_vendas.sql
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
from public_bronze.brz_vendas v
left join public_bronze.brz_clientes c on v.cliente_id = c.cliente_id
left join public_bronze.brz_regioes r on v.regiao_id = r.regiao_id
left join public_bronze.brz_produtos p on v.produto_id = p.produto_id

---------------------------------------------------------------------------------

-- models/gold/gld_fato_vendas.sql
select 
    extract(year from data_venda) as ano,
    uf,
    nome_produto,
    sum(quantidade) as total_itens,
    sum(total_venda) as receita_total
from public_silver.slv_vendas
group by 1, 2, 3
order by ano, receita_total desc