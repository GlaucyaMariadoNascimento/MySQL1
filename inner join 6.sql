CREATE DATABASE db_cursoDaMinhaVida

USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria(
id_categoria INT NOT NULL AUTO_INCREMENT,
categoria VARCHAR (30),
disponivel BOOLEAN NOT NULL,
PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_cursos(
cod_cursos VARCHAR (20) PRIMARY KEY NOT NULL,
nome_cursos VARCHAR (60),
periodo_cursos VARCHAR (15),
preco DECIMAL (4.2),
id_categ INT,
FOREIGN KEY (id_categ) REFERENCES tb_categoria(id_categoria)
);

INSERT INTO tb_categoria (categoria, disponivel)
VALUES
("Tecnologia", true),
("Saude", true),
("Humanas", true);

INSERT INTO tb_cursos (cod_cursos, nome_cursos, periodo_cursos, preco, id_categ)
VALUES
("A456", "Java", "Noturno", 129.99, 1),
("B456", "Como se tornar um bom medico", "Noturno", 199.99, 2),
("D456", "Pedagogia", "Maturino", 129.99, 3),
("E456", "Csharp", "Noturno", 129.99, 1),
("F456", "HTML5", "Noturno", 100.99, 1),
("G456", "Como se tornar um bom jornalista", "Noturno", 129.99, 3),
("H456", "Artes Visuais", "Noturno", 200.99, 3);

SELECT * FROM tb_cursos
WHERE preco > 50;

SELECT * FROM tb_cursos 
WHERE preco >= 3 and preco <= 60;

SELECT * FROM tb_cursos
WHERE nome_cursos like '%C%';

SELECT cod_cursos, nome_cursos, periodo_cursos, preco, id_categ
FROM tb_cursos
inner join tb_categoria
ON tb_cursos.id_categ = tb_categoria.id_categoria;

SELECT * FROM tb_cursos
WHERE id_categ = 1;




