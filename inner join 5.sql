CREATE DATABASE db_construindo_a_nossa_vida

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
id_categoria INT NOT NULL AUTO_INCREMENT, 
categoria VARCHAR (30),
disponibilidade BOOLEAN NOT NULL,
PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_produtos(
cod_produtos VARCHAR (20) PRIMARY KEY NOT NULL , 
nome VARCHAR(30),
descricao VARCHAR (60),
preco DECIMAL (5.2),
qt_produtos INT NOT NULL, 
id_categ INT,
FOREIGN KEY (id_categ) REFERENCES tb_categoria(id_categoria)
);

INSERT INTO tb_categoria (categoria, disponibilidade)
VALUES
("Hidraulica", true),
("Eletrica", true),
("Alvenaria", true);

INSERT INTO tb_produtos (cod_produtos, nome, descricao, preco, qt_produtos, id_categ)
VALUES
("A235", "Cano", "Cano de esgoto", 59.99, 6, 1 ),
("B235", "Fio", "fio 8mm", 89.99, 6, 2 ),
("D235", "Tijolo", "8 furos", 9.99, 150, 3 ),
("E235", "Cano", "Cano interno ", 29.99, 8, 1 ),
("F235", "Tomada", "Tomada padrao", 19.99, 5, 2 ),
("G235", "Bloco", "Bloco padrao", 9.99, 150, 3 ),
("H235", "Porta", "Porta padrao entrada", 199.99, 8, 3);

SELECT * FROM tb_produtos
WHERE preco > 50;

SELECT * FROM tb_produtos 
WHERE preco >= 3 and preco <= 60;

SELECT * FROM tb_produtos
WHERE nome like '%C%';

SELECT cod_produtos, nome, descricao, preco, qt_produtos, id_categ
FROM tb_produtos
inner join tb_categoria
ON tb_produtos.id_categ = tb_categoria.id_categoria;

SELECT * FROM tb_produtos
WHERE id_categ = 2;

