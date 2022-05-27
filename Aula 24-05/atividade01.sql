CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
raca VARCHAR(255) NOT NULL,
classe VARCHAR(255) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO tb_classes(raca, classe)
VALUE ("Elfo", "Mago");
INSERT INTO tb_classes(raca, classe)
VALUE ("Argoniano", "Mago");
INSERT INTO tb_classes(raca, classe)
VALUE ("Khajiits", "Ladrão");
INSERT INTO tb_classes(raca, classe)
VALUE ("Orc", "Guerreiro");
INSERT INTO tb_classes(raca, classe)
VALUE ("Humano", "Guerreiro");

SELECT * FROM tb_classes;

CREATE TABLE tb_personagens(
id BIGINT  AUTO_INCREMENT,
nome VARCHAR(255),
vida INT(100),
ataque INT(100),
defesa INT(100),
esquiva INT(100),
velocidade INT(100),
labia INT(100),
inteligencia INT(100),
classe_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens(nome, vida, ataque, defesa, esquiva, velocidade, labia, inteligencia, classe_id)
VALUES ("Hadvar", 78, 66, 80, 80, 86, 90, 100, 1);
INSERT INTO tb_personagens(nome, vida, ataque, defesa, esquiva, velocidade, labia, inteligencia, classe_id)
VALUES ("Galmar", 50, 16, 88, 61, 91, 40, 80, 2);
INSERT INTO tb_personagens(nome, vida, ataque, defesa, esquiva, velocidade, labia, inteligencia, classe_id)
VALUES ("Hircine", 78, 66, 64, 46, 86, 50, 55, 3);
INSERT INTO tb_personagens(nome, vida, ataque, defesa, esquiva, velocidade, labia, inteligencia, classe_id)
VALUES ("Valerica", 78, 80, 44, 79, 86, 46, 48, 4);
INSERT INTO tb_personagens(nome, vida, ataque, defesa, esquiva, velocidade, labia, inteligencia, classe_id)
VALUES ("Hroki", 78, 66, 80, 10, 17, 90, 36, 5);
INSERT INTO tb_personagens(nome, vida, ataque, defesa, esquiva, velocidade, labia, inteligencia, classe_id)
VALUES ("Mephala", 78, 66, 80, 80, 13, 66, 56, 3);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE ataque > 50;
SELECT * FROM tb_personagens WHERE defesa BETWEEN 30 AND 60;
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id WHERE Classe LIKE "%Guerreiro"; 

