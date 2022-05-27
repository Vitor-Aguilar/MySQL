CREATE DATABASE db_cidade_dos_vegetais;

USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
Descrição VARCHAR (255) NOT NULL,
Disponível BOOLEAN,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias(Descrição, Disponível)
VALUES ("Frutas", TRUE);
INSERT INTO tb_categorias(Descrição, Disponível)
VALUES ("Verduras", TRUE);
INSERT INTO tb_categorias(Descrição, Disponível)
VALUES ("Legumes", TRUE);
INSERT INTO tb_categorias(Descrição, Disponível)
VALUES ("Ovos", TRUE);
INSERT INTO tb_categorias(Descrição, Disponível)
VALUES ("Grãos", TRUE);

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
Nome VARCHAR(255) NOT NULL,
Quantidade INT, 
Data_Validade DATE NULL,
Preço DECIMAL(6, 2),
Categoria_id BIGINT, 
PRIMARY KEY (id),
FOREIGN KEY (Categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (Nome, Quantidade, Data_Validade, Preço, Categoria_id)
VALUES ("Maçã", 1000, "2022-03-07", 1.99, 1);
INSERT INTO tb_produtos (Nome, Quantidade, Data_Validade, Preço, Categoria_id)
VALUES ("Banana", 1300, "2022-03-08", 5.00, 1);
INSERT INTO tb_produtos (Nome, Quantidade, Data_Validade, Preço, Categoria_id)
VALUES ("Batata doce", 2000, "2022-03-09", 53.99, 3);
INSERT INTO tb_produtos (Nome, Quantidade, Data_Validade, Preço, Categoria_id)
VALUES ("Alface", 300, "2022-03-10", 7.00, 2);
INSERT INTO tb_produtos (Nome, Quantidade, Data_Validade, Preço, Categoria_id)
VALUES ("Cebola", 1020, "2022-03-08", 5.00, 3);
INSERT INTO tb_produtos(Nome, Quantidade, Data_Validade, Preço, Categoria_id)
VALUES("Ovo Branco", 1000, "2022-03-07", 15.00, 4);
INSERT INTO tb_produtos(Nome, Quantidade, Data_Validade, Preço, Categoria_id)
VALUES("Feijão", 1500, "2022-03-06", 55.87, 5);
INSERT INTO tb_produtos(Nome, Quantidade, Data_Validade, Preço, Categoria_id)
VALUES("Cenoura", 1800, "2022-03-09", 65.87, 3);

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE Preço > 50;
SELECT * FROM tb_produtos WHERE Preço BETWEEN 50 AND 150;
SELECT * FROM tb_produtos WHERE Nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.Categoria_id = tb_categorias.id;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.Categoria_id = tb_categorias.id WHERE Descrição LIKE "%Frutas%";