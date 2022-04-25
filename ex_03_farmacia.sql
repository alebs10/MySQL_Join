CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(30) NOT NULL,
ativo BOOLEAN,
PRIMARY KEY (id)
);

SELECT * FROM tb_categoria;

INSERT INTO tb_categoria(nome, ativo) VALUES ("Medicamentos", true);
INSERT INTO tb_categoria(nome, ativo) VALUES ("Medicamentos Controlados", true);
INSERT INTO tb_categoria(nome, ativo) VALUES ("Higiene", true);
INSERT INTO tb_categoria(nome, ativo) VALUES ("Estetica", true);
INSERT INTO tb_categoria(nome, ativo) VALUES ("Suplemento", true);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
descricao VARCHAR(255) NOT NULL,
quantidade INT NOT NULL,
preco DECIMAL (8,2) NOT NULL,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos (nome, descricao, quantidade, preco, categoria_id) VALUES ("Strepsils", "Dor de Garganta e irritacao", 1, 22.11, 1);
INSERT INTO tb_produtos (nome, descricao, quantidade, preco, categoria_id) VALUES ("Agomelatina", "Ansiedade", 1, 64.00, 2);
INSERT INTO tb_produtos (nome, descricao, quantidade, preco, categoria_id) VALUES ("Esmalte Impala", "Esmalte para Unhas", 1, 22.11, 4);
INSERT INTO tb_produtos (nome, descricao, quantidade, preco, categoria_id) VALUES ("Dorflex", "Relaxante muscular", 2, 39.80, 1);
INSERT INTO tb_produtos (nome, descricao, quantidade, preco, categoria_id) VALUES ("Cicatricure", "Creme para cicatrizes", 1, 27.02, 4);
INSERT INTO tb_produtos (nome, descricao, quantidade, preco, categoria_id) VALUES ("Shampoo Dove", "Shampoo para cabelo feminino", 1, 29.99, 3);
INSERT INTO tb_produtos (nome, descricao, quantidade, preco, categoria_id) VALUES ("Amitriptilina Generico", "Insonia", 1, 15.24, 2);
INSERT INTO tb_produtos (nome, descricao, quantidade, preco, categoria_id) VALUES ("Moov", "Manutencao de cabelos, unhas e pele", 2, 9.98, 5);
INSERT INTO tb_produtos (nome, descricao, quantidade, preco, categoria_id) VALUES ("CentroTbas Melatonina", "Insonia", 1, 29.90, 2);

SELECT * FROM tb_produtos
WHERE preco > 50;

SELECT * FROM tb_produtos
WHERE preco BETWEEN 5 AND 60
ORDER BY preco;

SELECT * FROM tb_produtos
WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categoria
ON tb_produtos.categoria_id = tb_categoria.id;

SELECT * FROM tb_produtos INNER JOIN tb_categoria
ON tb_produtos.categoria_id = tb_categoria.id
WHERE tb_categoria.nome = "Estetica";