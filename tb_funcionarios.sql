CREATE DATABASE db_rh

USE db_rh;

CREATE TABLE tb_funcionarios (
id_funcionario INT NOT NULL AUTO_INCREMENT,
cpf CHAR (11) NOT NULL,
nome VARCHAR (45),
salario DECIMAL (10.2),
setor VARCHAR (30),
cargo VARCHAR (30),
PRIMARY KEY (id_funcionario)
);

INSERT INTO tb_funcionarios (cpf, nome, salario, setor, cargo)
VALUES 
(12345678910, " Luiz Henrique", 1500.00, "correspondencia", "estagiario"),
(10987654321, "Patricia Herera", 5000.00, "tecnologia", "desenvolvedora jr"),
(23456789101, "Evan Pedroza", 1900.00, "tecnologia", "estagiario"),
(34567891012, "Amelia Luba", 8000.00, "contabilidade", "contadora"),
(45678910123, "Athena Luke", 15000.00, "contabilidade", "diretora de contas")

SELECT * FROM tb_funcionarios WHERE salario > 2000.00

SELECT * FROM tb_funcionarios WHERE salario < 2000.00





