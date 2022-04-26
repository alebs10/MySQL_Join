create database db_construindo_vidas;

use db_construindo_vidas;

create table tb_categorias (
id bigint auto_increment,
nome varchar (50) not null,
ativo boolean not null,
primary key (id)
);

select*from tb_categorias;

insert into tb_categorias( nome, ativo) values ("Ferramentas", true);
insert into tb_categorias( nome, ativo) values ("Hidraulico", true);
insert into tb_categorias( nome, ativo) values ("Tintas", true);
insert into tb_categorias( nome, ativo) values ("Cimentos", true);
insert into tb_categorias( nome, ativo) values ("Tijolos", true);

create table tb_produtos(
id bigint auto_increment,
nome varchar (100) not null,
preco decimal (8.2),
marca varchar (100) not null,
quantidade int not null,
categorias_id bigint,
primary key (id),
foreign key (categorias_id) references tb_categorias (id)
);

insert into tb_produtos(nome, preco, marca, quantidade, categorias_id) values ("Martelo", 35.00, "Tramontina", 1, 1);
insert into tb_produtos(nome, preco, marca, quantidade, categorias_id) values ("Lata de tinta", 250.00, "Lukscolor", 1, 3);
insert into tb_produtos(nome, preco, marca, quantidade, categorias_id) values ("Tijolo Baiano", 800.00, "Tramontina", 1000, 5);
insert into tb_produtos(nome, preco, marca, quantidade, categorias_id) values ("Barra de cano 3/4", 60.00, "Tigre", 3, 2);
insert into tb_produtos(nome, preco, marca, quantidade, categorias_id) values ("Cimento cola", 33.00, "Votoran", 1, 4);
insert into tb_produtos(nome, preco, marca, quantidade, categorias_id) values ("Chave de fenda isolada", 15.00, "Dexter", 1, 1);
insert into tb_produtos(nome, preco, marca, quantidade, categorias_id) values ("Galao de tinta 3,600 lt", 180.00, "Suvinil", 1, 3);
insert into tb_produtos(nome, preco, marca, quantidade, categorias_id) values ("Trena 10mt", 30.00, "Dexter", 1, 1);

select*from tb_produtos;

-- update tb_produtos set marca = "Indaia" where id = 3;

select*from tb_produtos where preco > 100.00;

select*from tb_produtos where preco between 70.00 and 150.00;

select*from tb_produtos where nome like "%c%";

select*from tb_produtos inner join tb_categorias 
on tb_produtos.categorias_id = tb_categorias.id;

select*from tb_produtos inner join tb_categorias
on tb_produtos.categorias_id = tb_categorias.id
where tb_categorias.nome = "hidraulico";



