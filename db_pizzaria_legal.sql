CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;


CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
sabor VARCHAR(20) NOT NULL,
tipo VARCHAR(20) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categoria(sabor, tipo) values ("Mussarela", "Salgada");
INSERT INTO tb_categoria(sabor, tipo) values ("Calabresa", "Salgada");
INSERT INTO tb_categoria(sabor, tipo) values ("Frango com Catupiry", "Salgada");
INSERT INTO tb_categoria(sabor, tipo) values ("Pepperoni", "Salgada");
INSERT INTO tb_categoria(sabor, tipo) values ("Abacaxi", "Doce");
INSERT INTO tb_categoria(sabor, tipo) values ("Nutella", "Doce");

SELECT * FROM tb_categoria;

CREATE TABLE tb_pizza(
id BIGINT AUTO_INCREMENT,
descricao VARCHAR(100) NOT NULL,
preco DECIMAL(10,2) NOT NULL,
numFatias INT NOT NULL,
borda varchar(100) NOT NULL,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

SELECT * FROM tb_pizza;

INSERT INTO tb_pizza (descricao, preco, numFatias, borda, categoria_id) VALUES ("Pizza de Mussarela", 79.99, 8, "Recheada com Marguerita", 1);
INSERT INTO tb_pizza (descricao, preco, numFatias, borda, categoria_id) VALUES ("Pizza de Calabresa", 79.99, 12, "Sem recheio", 2);
INSERT INTO tb_pizza (descricao, preco, numFatias, borda, categoria_id) VALUES ("Pizza de Frango com Catupiry", 69.99, 4, "Recheada com Mussarela", 3);
INSERT INTO tb_pizza (descricao, preco, numFatias, borda, categoria_id) VALUES ("Pizza de Pepperoni", 69.99, 8, "Recheada com Calabresa", 4);
INSERT INTO tb_pizza (descricao, preco, numFatias, borda, categoria_id) VALUES ("Pizza de Calabresa sem Cebola", 79.99, 12, "Recheada com Marguerita", 2);
INSERT INTO tb_pizza (descricao, preco, numFatias, borda, categoria_id) VALUES ("Pizza de Nutella", 49.99, 4, "Recheada com Marguerita", 6);
INSERT INTO tb_pizza (descricao, preco, numFatias, borda, categoria_id) VALUES ("Pizza de Abacaxi", 59.99, 8, "Sem recheio", 5);
INSERT INTO tb_pizza (descricao, preco, numFatias, borda, categoria_id) VALUES ("Pizza de Mussarela", 79.99, 8, "Recheada com Pepperoni", 1);

SELECT * FROM tb_pizza
WHERE preco >= 45.00
ORDER BY preco;

SELECT * FROM tb_pizza
WHERE preco BETWEEN 500 AND 1000
ORDER BY preco;

SELECT * FROM tb_pizza
WHERE descricao LIKE "%M%";

SELECT * FROM tb_pizza INNER JOIN tb_categoria
ON tb_pizza.categoria_id = tb_categoria.id;

SELECT * FROM tb_pizza INNER JOIN tb_categoria
ON tb_pizza.categoria_id = tb_categoria.id
WHERE tb_categoria.tipo = "Doce";