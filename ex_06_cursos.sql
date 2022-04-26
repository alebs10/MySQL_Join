CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
ativo BOOLEAN NOT NULL,
PRIMARY KEY (id)
);


INSERT INTO tb_categorias(nome, ativo) VALUES("Liguisticas", 1);
INSERT INTO tb_categorias(nome, ativo) VALUES("Engenharias", 1);
INSERT INTO tb_categorias(nome, ativo) VALUES("Ciencias Exatas", 1);
INSERT INTO tb_categorias(nome, ativo) VALUES("Ciencias Biologicas", 1);
INSERT INTO tb_categorias(nome, ativo) VALUES("Ciencias Humanas", 1);
INSERT INTO tb_categorias(nome, ativo) VALUES("Curso Java", 1);

SELECT * FROM tb_categorias;

CREATE TABLE tb_cursos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
preco DECIMAL(8,2) NOT NULL,
nivel VARCHAR(100) NOT NULL,
periodo VARCHAR(255) NOT NULL,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_cursos (nome, preco, nivel, periodo, categoria_id) VALUES ("Letras", 1200, "Pos-Graduacao", "Matutino", 1);
INSERT INTO tb_cursos (nome, preco, nivel, periodo, categoria_id) VALUES ("Curso Desenvolvedor Java Junior", 500.00, "Graduacao", "Noturno", 6);
INSERT INTO tb_cursos (nome, preco, nivel, periodo, categoria_id) VALUES ("Matematica", 700.00, "Graduacao", "Vespertino", 3);
INSERT INTO tb_cursos (nome, preco, nivel, periodo, categoria_id) VALUES ("Biologia", 650, "Pos-Graduacao", "Matutino",4 );
INSERT INTO tb_cursos (nome, preco, nivel, periodo, categoria_id) VALUES ("Engenharia da Computacao", 1000, "Pos-Graduacao", "Matutino", 2);
INSERT INTO tb_cursos (nome, preco, nivel, periodo, categoria_id) VALUES ("Teologia", 700, "Graduacao", "Vespertino", 5);
INSERT INTO tb_cursos (nome, preco, nivel, periodo, categoria_id) VALUES ("Zoologia", 400, "Graduacao", "Matutino", 4);
INSERT INTO tb_cursos (nome, preco, nivel, periodo, categoria_id) VALUES ("Engenharia Mecanica", 800, "Bacharelado", "Vespetino", 2);

SELECT * FROM tb_cursos;

SELECT * FROM tb_cursos
WHERE preco > 500;

SELECT * FROM tb_cursos
WHERE preco BETWEEN 600 AND 1000;

SELECT * FROM tb_cursos
WHERE nome LIKE "%J%";

SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoria_id = tb_categorias.id;

SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoria_id = tb_categorias.id
WHERE tb_categorias.nome = "Curso Java";