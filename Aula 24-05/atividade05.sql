CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
Descrição VARCHAR (255) NOT NULL,
Disponível BOOLEAN,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias(Descrição, Disponível)
VALUES ("Piso", TRUE);
INSERT INTO tb_categorias(Descrição, Disponível)
VALUES ("Revestimento", TRUE);
INSERT INTO tb_categorias(Descrição, Disponível)
VALUES ("Tintas", TRUE);
INSERT INTO tb_categorias(Descrição, Disponível)
VALUES ("Ferramentas", TRUE);
INSERT INTO tb_categorias(Descrição, Disponível)
VALUES ("Construção", TRUE);

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
Nome VARCHAR(255) NOT NULL,
Quantidade INT, 
Preço DECIMAL(6, 2),
Categoria_id BIGINT, 
PRIMARY KEY (id),
FOREIGN KEY (Categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos(Nome, Quantidade, Preço, Categoria_id)
VALUES ("Piso ceramica", 100, 82.99, 1);
INSERT INTO tb_produtos(Nome, Quantidade, Preço, Categoria_id)
VALUES ("Revestimento parede", 100, 72.99, 2);
INSERT INTO tb_produtos(Nome, Quantidade, Preço, Categoria_id)
VALUES ("Tinta azul", 100, 70, 3);
INSERT INTO tb_produtos(Nome, Quantidade, Preço, Categoria_id)
VALUES ("Tinta verde", 100, 75.99, 3);
INSERT INTO tb_produtos(Nome, Quantidade, Preço, Categoria_id)
VALUES ("Tinta vermelha", 100, 100, 3);
INSERT INTO tb_produtos(Nome, Quantidade, Preço, Categoria_id)
VALUES ("Tinta preta", 100, 120.99, 3);
INSERT INTO tb_produtos(Nome, Quantidade, Preço, Categoria_id)
VALUES ("Chave de fenda", 100, 150, 4);
INSERT INTO tb_produtos(Nome, Quantidade, Preço, Categoria_id)
VALUES ("Saco de cimento", 100, 52.99, 5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE Preço > 100;
SELECT * FROM tb_produtos WHERE Preço BETWEEN 70 AND 150;
SELECT * FROM tb_produtos WHERE Nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.Categoria_id = tb_categorias.id;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.Categoria_id = tb_categorias.id WHERE Descrição LIKE "%ferramentas%";