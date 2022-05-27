CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
Descrição VARCHAR (255) NOT NULL,
Disponível BOOLEAN,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias(Descrição, Disponível)
VALUES ("Tecnologia", TRUE);
INSERT INTO tb_categorias(Descrição, Disponível)
VALUES ("Administração", TRUE);
INSERT INTO tb_categorias(Descrição, Disponível)
VALUES ("Marketing", TRUE);
INSERT INTO tb_categorias(Descrição, Disponível)
VALUES ("Direito", TRUE);
INSERT INTO tb_categorias(Descrição, Disponível)
VALUES ("Educação fisica", TRUE);

SELECT * FROM tb_categorias;

CREATE TABLE tb_cursos(
id BIGINT AUTO_INCREMENT,
Nome_Curso VARCHAR(255) NOT NULL,
Nome_Aluno VARCHAR(255) NOT NULL,
Preço DECIMAL(6, 2),
Categoria_id BIGINT, 
PRIMARY KEY (id),
FOREIGN KEY (Categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_cursos(Nome_Curso, Nome_Aluno, Preço, Categoria_id)
VALUES ("Introdução a Java", "Vitor", 650, 1);
INSERT INTO tb_cursos(Nome_Curso, Nome_Aluno, Preço, Categoria_id)
VALUES ("Curso Java Avançado", "Hugo", 1000, 1);
INSERT INTO tb_cursos(Nome_Curso, Nome_Aluno, Preço, Categoria_id)
VALUES ("Técnico em Administração", "Maria", 850.00, 2);
INSERT INTO tb_cursos(Nome_Curso, Nome_Aluno, Preço, Categoria_id)
VALUES ("Curso marketing digital", "Ana", 550, 3);
INSERT INTO tb_cursos(Nome_Curso, Nome_Aluno, Preço, Categoria_id)
VALUES ("Curso de RH", "Renan", 1000, 2);
INSERT INTO tb_cursos(Nome_Curso, Nome_Aluno, Preço, Categoria_id)
VALUES ("Curso de direito", "Renata", 669.99, 4);
INSERT INTO tb_cursos(Nome_Curso, Nome_Aluno, Preço, Categoria_id)
VALUES ("Introdução a Logica de programação", "Pedro", 150, 1);
INSERT INTO tb_cursos(Nome_Curso, Nome_Aluno, Preço, Categoria_id)
VALUES ("Introdução a MYSQL", "Paula", 510.99, 1);

SELECT * FROM tb_cursos;

SELECT * FROM tb_cursos WHERE Preço > 500;
SELECT * FROM tb_cursos WHERE Preço BETWEEN 600 AND 1000;
SELECT * FROM tb_cursos WHERE Nome_Curso LIKE "%j%";

SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.Categoria_id = tb_categorias.id;
SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.Categoria_id = tb_categorias.id WHERE Descrição LIKE "%Tecnologia%";