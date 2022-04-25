CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
descricao VARCHAR(20) NOT NULL,
nivel int NOT NULL,
PRIMARY KEY (id)
);

SELECT * FROM tb_classes;

INSERT INTO tb_classes (descricao, nivel) values ("Anao", 25);
INSERT INTO tb_classes (descricao, nivel) values ("Mago", 15);
INSERT INTO tb_classes (descricao, nivel) values ("Ladrao", 5);
INSERT INTO tb_classes (descricao, nivel) values ("Cavaleiro", 50);

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
username VARCHAR(50) NOT NULL,
magias VARCHAR(20),
weapons VARCHAR(20),
armadura VARCHAR(30),
dinheiro DECIMAL (6,2),
classes_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (classes_id) REFERENCES tb_classes (id)
);

INSERT INTO tb_personagens (username,magias,weapons,armadura,dinheiro, classes_id) values ("LelinhoPlays", "Fogo", "Espada de Ferro", "Armadura de Diamante", 125.00, 1);
INSERT INTO tb_personagens (username,magias,weapons,armadura,dinheiro, classes_id) values ("Noob_Master", "Gelo", "Adaga de Ouro", "Manto Roxo de Algodao", 1500.00, 3);
INSERT INTO tb_personagens (username,magias,weapons,armadura,dinheiro, classes_id) values ("Sans", "Pedra", "Cajado de Mdeira", "Manto Branco de Algodao", 5.00, 2);
INSERT INTO tb_personagens (username,magias,weapons,armadura,dinheiro, classes_id) values ("Kris", "Eletrico", "Espada de Diamante", "Armadura de Aco", 2000.00, 4);
INSERT INTO tb_personagens (username,magias,weapons,armadura,dinheiro, classes_id) values ("Susie", "Agua", "Machado de Rubi", "Colete de Couro", 1.00, 4);
INSERT INTO tb_personagens (username,magias,weapons,armadura,dinheiro, classes_id) values ("Saruman", "Sombrio", "Cajado Sombrio", "Manto Grafite", 3000.00, 2);
INSERT INTO tb_personagens (username,magias,weapons,armadura,dinheiro, classes_id) values ("Goblin_0303", "Pedra", "Manopla de Aco", "Armadura de Pedra", 565.00, 3);
INSERT INTO tb_personagens (username,magias,weapons,armadura,dinheiro, classes_id) values ("Rose_Gameplays", "Espiritual", "Cajado da Luz", "Manto Vermelho de Algodao", 4999.00, 1);

SELECT * FROM tb_personagens; 

SELECT * FROM tb_personagens
WHERE ataque > 2000
ORDER BY ataque;

SELECT * FROM tb_personagens
WHERE defesa BETWEEN 1000 AND 2000
ORDER BY defesa;

SELECT * FROM tb_personagens
WHERE username LIKE "%C%";

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_id = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_id = tb_classes.id
WHERE tb_classes.descricao = "Mago";
