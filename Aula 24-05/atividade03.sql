CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
Descrição VARCHAR (255) NOT NULL,
Disponível BOOLEAN,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias(Descrição, Disponível)
VALUES ("Genericos", TRUE);
INSERT INTO tb_categorias(Descrição, Disponível)
VALUES ("Cosmeticos", TRUE);
INSERT INTO tb_categorias(Descrição, Disponível)
VALUES ("Higiene", TRUE);
INSERT INTO tb_categorias(Descrição, Disponível)
VALUES ("Remedios capsula", TRUE);
INSERT INTO tb_categorias(Descrição, Disponível)
VALUES ("Remedios liquido", TRUE);

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
Nome VARCHAR (255),
Quantidade  INT,
Preço DECIMAL (6,2),
Categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (Categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos(Nome, Quantidade, Preço, Categoria_id)
VALUES ("Shampoo", 100, 9.99, 2);
INSERT INTO tb_produtos(Nome, Quantidade, Preço, Categoria_id)
VALUES ("Sabonete", 100, 4.50, 3);
INSERT INTO tb_produtos(Nome, Quantidade, Preço, Categoria_id)
VALUES ("Dipirona", 100, 12.90, 4);
INSERT INTO tb_produtos(Nome, Quantidade, Preço, Categoria_id)
VALUES ("Amoxilina", 100, 13.20, 5);
INSERT INTO tb_produtos(Nome, Quantidade, Preço, Categoria_id)
VALUES ("Calcitran", 100, 60.99, 4);
INSERT INTO tb_produtos(Nome, Quantidade, Preço, Categoria_id)
VALUES ("Dorflex", 100, 28.99, 1);
INSERT INTO tb_produtos(Nome, Quantidade, Preço, Categoria_id)
VALUES ("Expec", 100, 60.44, 5);
INSERT INTO tb_produtos(Nome, Quantidade, Preço, Categoria_id)
VALUES ("Xarope", 100, 11.99, 5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE Preço > 50;
SELECT * FROM tb_produtos WHERE Preço BETWEEN 5 AND 60;
SELECT * FROM tb_produtos WHERE Nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.Categoria_id = tb_categorias.id;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.Categoria_id = tb_categorias.id WHERE Descrição LIKE "%Cosmeticos%";