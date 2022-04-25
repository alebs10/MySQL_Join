CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(30) NOT NULL,
ativo boolean,
PRIMARY KEY (id)
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (nome, ativo) VALUES ("Carne Branca", true);
INSERT INTO tb_categorias (nome, ativo) VALUES ("Carne Suina", true);
INSERT INTO tb_categorias (nome, ativo) VALUES ("Carne Bovina", true);
INSERT INTO tb_categorias (nome, ativo) VALUES ("Peixe", true);
INSERT INTO tb_categorias (nome, ativo) VALUES ("Carne de Cordeiro", true);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
preco DECIMAL(8,2) NOT NULL,
empresa VARCHAR(100) NOT NULL,
dtValidade DATE NOT NULL,
categorias_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias (id)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos (nome, preco, empresa, dtValidade, categorias_id) VALUES ("Contra-file", "45.99", "Seara", '2022-06-21', 4);
INSERT INTO tb_produtos (nome, preco, empresa, dtValidade, categorias_id) VALUES ("Sobre-Coxa", "30.99", "Seara", '2022-05-19', 1);
INSERT INTO tb_produtos (nome, preco, empresa, dtValidade, categorias_id) VALUES ("Tilapia", "50.99", "Swift", '2022-04-29', 5);
INSERT INTO tb_produtos (nome, preco, empresa, dtValidade, categorias_id) VALUES ("Costela de Porco", "65.99", "Sadia", '2022-07-28', 3);
INSERT INTO tb_produtos (nome, preco, empresa, dtValidade, categorias_id) VALUES ("Alcatra", "65.99", "Friboi", '2022-08-26', 4);
INSERT INTO tb_produtos (nome, preco, empresa, dtValidade, categorias_id) VALUES ("Costela-Desossada", "79.99", "Swift", '2022-08-15', 6);
INSERT INTO tb_produtos (nome, preco, empresa, dtValidade, categorias_id) VALUES ("Picanha", "159.99", "Aurora", '2022-07-28', 4);
INSERT INTO tb_produtos (nome, preco, empresa, dtValidade, categorias_id) VALUES ("Sardinha", "65.99", "Swift", '2022-05-12', 5);

SELECT * FROM tb_produtos
WHERE preco > 50
ORDER BY preco;

SELECT * FROM tb_produtos
WHERE preco BETWEEN 50 AND 150;

SELECT * FROM tb_produtos
WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id
WHERE tb_categorias.nome = "Carne Branca";