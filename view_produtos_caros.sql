CREATE DATABASE PRECOJUSTO;

USE PRECOJUSTO;

CREATE TABLE produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(255),
    valor DECIMAL(10, 2)
);

INSERT INTO produtos (nome_produto, valor)
VALUES ("Notebook", 2500.00);
INSERT INTO produtos (nome_produto, valor)
VALUES ("Fone de Ouvido", 80.00);
INSERT INTO produtos (nome_produto, valor)
VALUES ("Tablet", 800.00);
INSERT INTO produtos (nome_produto, valor)
VALUES ("Mouse", 25.00);
INSERT INTO produtos (nome_produto, valor)
VALUES ("Smartphone", 1200.00);

CREATE VIEW vw_produtos_caros AS
SELECT nome_produto, valor
FROM produtos
WHERE valor > 100;

SELECT * FROM vw_produtos_caros;
