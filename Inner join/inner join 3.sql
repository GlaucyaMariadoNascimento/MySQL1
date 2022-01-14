CREATE DATABASE db_farmacia_do_bem

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
id_categoria INT NOT NULL AUTO_INCREMENT,
categoria VARCHAR (30),
disponibilidade BOOLEAN NOT NULL,
PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_produtos(
cod_produtos VARCHAR (20) PRIMARY KEY NOT NULL,
nome VARCHAR (45),
descricao VARCHAR (60),
marca VARCHAR (25),
preco DECIMAL (5.2),
id_categ INT,
FOREIGN KEY (id_categ) REFERENCES tb_categoria(id_categoria)
);

INSERT INTO tb_categoria (categoria, disponibilidade)
VALUES 
("Beleza", true),
("Higiene", true),
("Medicacao", true);

INSERT INTO tb_produtos (cod_produtos, nome, descricao, marca, preco, id_categ)
VALUES
("A125", "Shampoo", "Shampoo hidratação 400 ml", "Pantene", 19.99, 2),
("B125", "Condicionador", "Condicionador hidratação 200 ml", "Pantene", 19.99, 2),
("C125", "Dorflex", "Medicamento para dor muscular", "Dorflex", 22.99, 3),
("D125", "Base", "Base mate cor 03", "Boca Rosa", 69.99, 1),
("E125", "Rivotril", "Calmante tarja preta", "Roche", 199.99, 3),
("F125", "Shampoo", "Truss Miracle Summer Shampoo 300ml", "Truss", 169.99, 2);

SELECT * FROM tb_produtos
WHERE preco > 50;

SELECT * FROM tb_produtos 
WHERE preco >= 3 and preco <= 60;

SELECT * FROM tb_produtos
WHERE nome like '%C%';

SELECT cod_produtos, nome, descricao, marca, preco, id_categoria
FROM tb_produtos
inner join tb_categoria
ON tb_produtos.id_categ = tb_categoria.id_categoria;

SELECT * FROM tb_produtos
WHERE id_categ = 3;


