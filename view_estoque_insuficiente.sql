CREATE DATABASE EMPRESA2;

USE EMPRESA2;

CREATE TABLE produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(255),
    quantidade_em_estoque INT
);

INSERT INTO produtos (nome_produto, quantidade_em_estoque)
VALUES ("Chips de Batata", 3);
INSERT INTO produtos (nome_produto, quantidade_em_estoque)
VALUES ("Refrigerante", 6);
INSERT INTO produtos (nome_produto, quantidade_em_estoque)
VALUES ("Barras de Chocolate", 2);
INSERT INTO produtos (nome_produto, quantidade_em_estoque)
VALUES ("Cerveja", 10);
INSERT INTO produtos (nome_produto, quantidade_em_estoque)
VALUES ("Salgadinhos", 4);

CREATE VIEW vw_estoque_insuficiente AS
SELECT nome_produto, quantidade_em_estoque
FROM produtos
WHERE quantidade_em_estoque < 5;

SELECT * FROM vw_estoque_insuficiente;
