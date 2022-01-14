CREATE DATABASE db_cidade_das_carnes

USE db_cidade_das_carnes;

CREATE TABLE tb_categoria(
id_categoria INT NOT NULL AUTO_INCREMENT,
categoria VARCHAR (30),
disponibilidade BOOLEAN NOT NULL,
PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_produtos(
id_produtos INT PRIMARY KEY NOT NULL AUTO_INCREMENT, 
nome VARCHAR(30),
preco DECIMAL (5.2),
dt_validade DATE,
qt_produto INT NOT NULL, 
id_categ INT,
FOREIGN KEY (id_categ) REFERENCES tb_categoria(id_categoria)
);

INSERT INTO tb_categoria (categoria, disponibilidade)
VALUES
("Suino", true),
("Bovino", true),
("Aves", true);

INSERT INTO tb_produtos (nome, preco,dt_validade, qt_produto, id_categ)
VALUES
("Patinho", 39.99, "2022-02-02", 5, 2),
("Peito de frango", 19.99, "2022-02-10", 2, 3),
("Costela", 22.99, "2022-01-22", 6, 1),
("Contra file", 69.99, "2022-02-02", 5, 2),
("coxinha", 19.99, "2022-02-10", 2, 3),
("Bisteca", 26.99, "2022-01-22", 6, 1);

SELECT * FROM tb_produtos
WHERE preco > 50;

SELECT * FROM tb_produtos 
WHERE preco >= 3 and preco <= 60;

SELECT * FROM tb_produtos
WHERE nome like '%C%';

SELECT nome, preco,dt_validade, qt_produto, id_categ
FROM tb_produtos
inner join tb_categoria
ON tb_produtos.id_categ = tb_categoria.id_categoria;

SELECT * FROM tb_produtos
WHERE id_categ = 3;