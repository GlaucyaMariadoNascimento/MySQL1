CREATE DATABASE db_loja

USE db_loja;

CREATE TABLE tb_produtos(
id_produtos INT  NOT NULL AUTO_INCREMENT,
produto VARCHAR(25),
marca VARCHAR (20),
tamanho VARCHAR (5),
preco FLOAT,
PRIMARY KEY (id_produtos)
);

INSERT INTO tb_produtos (produto, marca,tamanho,preco)
VALUES
("Camiseta", "Adidas", "m", 59.99),
("Calca", "Adidas", "m", 899.99),
("Moletom", "Nike", "p", 599.99),
("Camiseta", "Nike", "m", 99.99),
("Cinto", "Gucci", "l", 3199.99),
("Calca", "Nike", "p", 299.99),
("Jaqueta", "Adidas", "m", 599.00),
("Meia", "Puma", "m", 49.99)

SELECT * FROM tb_produtos WHERE preco >500

SELECT * FROM tb_produtos WHERE preco <500

UPDATE tb_produtos
SET tamanho = "m"
WHERE  id_produtos = 3;
 


