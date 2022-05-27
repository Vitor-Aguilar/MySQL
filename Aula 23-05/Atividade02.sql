CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade INT,
fabricante VARCHAR(255),
preco DECIMAL (7,3) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, quantidade, fabricante, preco)
VALUES ("Xbox One S", 200, "Microsoft", 2.800);
INSERT INTO tb_produtos(nome, quantidade, fabricante, preco)
VALUES ("Xbox One X", 150, "Microsoft", 4.000);
INSERT INTO tb_produtos(nome, quantidade, fabricante, preco)
VALUES ("PLaystation 5", 300, "Sony", 4.200);
INSERT INTO tb_produtos(nome, quantidade, fabricante, preco)
VALUES ("Playstation 5 Digital", 200, "Sony", 3.800);
INSERT INTO tb_produtos(nome, quantidade, fabricante, preco)
VALUES ("Notebook DELL", 800, "DELL", 2.500);
INSERT INTO tb_produtos(nome, quantidade, fabricante, preco)
VALUES ("Smartphone Samsumg", 800, "Samsumg", 2.300);
INSERT INTO tb_produtos(nome, quantidade, fabricante, preco)
VALUES ("Smartphone Redmi", 900, "Xiaomi", 2.400);
INSERT INTO tb_produtos(nome, quantidade, fabricante, preco)
VALUES ("Smartwatch ", 200, "Honor", 720);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 2.500;
SELECT * FROM tb_produtos WHERE preco < 2.500;

UPDATE tb_produtos SET preco = 2.853 WHERE id = 1;



