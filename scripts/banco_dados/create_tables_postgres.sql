
CREATE TABLE IF NOT EXISTS regioes (
    regiao_id SERIAL PRIMARY KEY,
    uf VARCHAR(2),
    cidade VARCHAR(100)
);



CREATE TABLE IF NOT EXISTS clientes (
    cliente_id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    cidade VARCHAR(100),
    estado VARCHAR(2)
);



CREATE TABLE IF NOT EXISTS fornecedores (
    fornecedor_id SERIAL PRIMARY KEY,
    empresa VARCHAR(150),
    telefone VARCHAR(20),
    cidade VARCHAR(100),
    estado VARCHAR(2)
);



CREATE TABLE IF NOT EXISTS produtos (
    produto_id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    categoria VARCHAR(100),
    preco NUMERIC(10,2),
    fornecedor_id INT REFERENCES fornecedores(fornecedor_id)
);



CREATE TABLE IF NOT EXISTS vendas (
    venda_id SERIAL PRIMARY KEY,
    produto_id INT REFERENCES produtos(produto_id),
    cliente_id INT REFERENCES clientes(cliente_id),
    quantidade INT,
    data_venda DATE,
    regiao_id INT REFERENCES regioes(regiao_id)
);
