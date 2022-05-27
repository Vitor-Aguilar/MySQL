CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
idade INT,
nota INT,
turno VARCHAR(255) NOT NULL,
formou BOOLEAN,
PRIMARY KEY (id)
);

INSERT INTO tb_estudantes(nome, idade, nota, turno, formou)
VALUES ("Anderson", 19, 5, "manha", true);
INSERT INTO tb_estudantes(nome, idade, nota, turno, formou)
VALUES ("Ana", 18, 6, "manha", true);
INSERT INTO tb_estudantes(nome, idade, nota, turno, formou)
VALUES ("Paula", 19, 6, "manha", true);
INSERT INTO tb_estudantes(nome, idade, nota, turno, formou)
VALUES ("João", 19, 7, "tarde", true);
INSERT INTO tb_estudantes(nome, idade, nota, turno, formou)
VALUES ("Maria", 19, 8, "tarde", true);
INSERT INTO tb_estudantes(nome, idade, nota, turno, formou)
VALUES ("Pedro", 18, 8, "noturno", true);
INSERT INTO tb_estudantes(nome, idade, nota, turno, formou)
VALUES ("Marta", 19, 8, "noturno", true);
INSERT INTO tb_estudantes(nome, idade, nota, turno, formou)
VALUES ("Vitor", 19, 9, "tarde", true);

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota > 7;
SELECT * FROM tb_estudantes WHERE nota < 7;

UPDATE tb_estudantes SET nota = 5 WHERE id = 3;