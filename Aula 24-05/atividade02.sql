CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
tamanho VARCHAR(255),
tipo VARCHAR(255),
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (tamanho, tipo)
VALUES ("Grande", "Salgado");
INSERT INTO tb_categorias (tamanho, tipo)
VALUES ("Medio", "Salgado");
INSERT INTO tb_categorias (tamanho, tipo)
VALUES ("Pequeno", "Doce");
INSERT INTO tb_categorias (tamanho, tipo)
VALUES ("Pequeno", "Salgado");
INSERT INTO tb_categorias (tamanho, tipo)
VALUES ("Medio", "Doce");

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
sabor VARCHAR(255),
borda BOOLEAN,
descrição VARCHAR(255),
preço DECIMAL (5,2),
categorias_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (sabor, borda, descrição, preço, categorias_id)
VALUES ("Calabresa", TRUE, "Pizza de Calabresa com cebola", 46.66, 1);
INSERT INTO tb_pizzas (sabor, borda, descrição, preço, categorias_id)
VALUES ("Mussalera", TRUE, "Pizza de mussarela", 46.66, 2);
INSERT INTO tb_pizzas (sabor, borda, descrição, preço, categorias_id)
VALUES ("Quatro Queijos", TRUE, "Mussarela, catupiry, gorgonzola, provolone", 54.00, 3);
INSERT INTO tb_pizzas (sabor, borda, descrição, preço, categorias_id)
VALUES ("Pepperoni", TRUE, "Pizza de pepperoni com provolone", 53.00, 4);
INSERT INTO tb_pizzas (sabor, borda, descrição, preço, categorias_id)
VALUES ("Frango", TRUE, "Pizza de frango desfiado com catupiry", 52.00, 4);
INSERT INTO tb_pizzas (sabor, borda, descrição, preço, categorias_id)
VALUES ("Chocolate", FALSE, "Pizza de chocolate com morango", 52.00, 5);
INSERT INTO tb_pizzas (sabor, borda, descrição, preço, categorias_id)
VALUES ("Romeu e Julieta", FALSE, "Pizza de mussarela coberta com goiabada", 52.00, 1);
INSERT INTO tb_pizzas (sabor, borda, descrição, preço, categorias_id)
VALUES ("Portuguesa", TRUE, "Pizza de mussarela, presunto, ovos, cebola e ervilha", 54.00, 2);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preço > 45;
SELECT * FROM tb_pizzas WHERE preço BETWEEN 50 AND 100;
SELECT * FROM tb_pizzas WHERE sabor LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categorias_id = tb_categorias.id;
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.Categorias_id = tb_categorias.id WHERE tipo LIKE "%Doce%";
