CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
ID BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
cpf INT,
data_nascimento DATE,
cargo VARCHAR (255) NOT NULL,
salario DECIMAL (6,2)NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, cpf, data_nascimento, cargo, salario)
VALUES ("Vitor",589060790-10, "1998-04-13", "Desenvolvedor", 4500.00);

INSERT INTO tb_colaboradores(nome, cpf, data_nascimento, cargo, salario)
VALUES ("Cleiton",035006830-53, "1999-12-26", "Desenvolvedor", 4500.00);

INSERT INTO tb_colaboradores(nome, cpf, data_nascimento, cargo, salario)
VALUES ("Sarah",606547020-12, "1996-07-07", "Gerente", 5000.00);

INSERT INTO tb_colaboradores(nome, cpf, data_nascimento, cargo, salario)
VALUES ("Anderson",275599950-04, "2001-08-26", "Desenvolvedor", 4500.00);

INSERT INTO tb_colaboradores(nome, cpf, data_nascimento, cargo, salario)
VALUES ("Maria",752885870-60, "2002-11-15", "Estagiario", 1800.00);

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET salario = 4856.00 WHERE id = 1;
UPDATE tb_colaboradores SET salario = 4500.00 WHERE id = 3;