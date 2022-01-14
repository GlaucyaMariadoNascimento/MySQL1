CREATE DATABASE db_pizza_legal

USE db_pizza_legal;

CREATE TABLE tb_categoria(
id_categoria INT NOT NULL AUTO_INCREMENT,
categoria VARCHAR (30),
tamanho  VARCHAR (20),
valor DECIMAL (4,2),
PRIMARY KEY (id_categoria)
);


CREATE TABLE tb_pizza(
id_pizza INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
sabor VARCHAR (30),
nr_pedacos INT,
id_categ INT NOT NULL,
qtd_pizza INT,
preco DECIMAL (4,2),
FOREIGN KEY (id_categ) REFERENCES tb_categoria (id_categoria)
);


INSERT INTO tb_categoria (categoria, tamanho, valor)
VALUES 
("Doce", "Grande", 49.99),
("Salgada"," Media", 39.99),
("Doce", "Broto", 29.99),
("Salgada", "Grande", 59.99);

INSERT INTO tb_pizza(sabor, nr_pedacos, id_categ, qtd_pizza, preco)
VALUES 
("Calabresa", 8, 1, 1, 39.99),
("Frango com Catupiry", 16, 1, 2, 99.99), 
("Mussarela", 8, 1,1,  39.99),
("Portuguesa", 16, 1, 1, 59.99),
("Chocolate ", 4, 2, 1, 49.99);

SELECT * FROM tb_categoria
WHERE preco > 45;

SELECT * FROM tb_categoria
WHERE preco >= 29 and preco <=60;

SELECT * FROM tb_pizza
WHERE sabor like '%C%';

SELECT sabor, nr_pedacos, id_categoria, qtd_pizza, preco
FROM tb_pizza
inner join tb_categoria
ON tb_pizza.id_categ = tb_categoria.id_categoria;

SELECT * FROM tb_pizza
WHERE id_categ = 2;







