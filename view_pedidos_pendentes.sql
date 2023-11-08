CREATE DATABASE ENTREGA;

USE ENTREGA;

CREATE TABLE produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(255),
    status_entrega_produto VARCHAR(255)
);

INSERT INTO produtos (nome_produto, status_entrega_produto)
VALUES ("Harry Potter e a Pedra Filosofal", "Entregue");
INSERT INTO produtos (nome_produto, status_entrega_produto)
VALUES ("As Crônicas de Nárnia", "Pendente");
INSERT INTO produtos (nome_produto, status_entrega_produto)
VALUES ("O Senhor dos Anéis", "Entregue");
INSERT INTO produtos (nome_produto, status_entrega_produto)
VALUES ("A Revolução dos Bichos", "Entregue");
INSERT INTO produtos (nome_produto, status_entrega_produto)
VALUES ("1984", "Pendente");
INSERT INTO produtos (nome_produto, status_entrega_produto)
VALUES ("O Hobbit", "Entregue");
INSERT INTO produtos (nome_produto, status_entrega_produto)
VALUES ("O Grande Gatsby", "Pendente");

CREATE VIEW vw_pedidos_pendentes AS
SELECT nome_produto, status_entrega_produto
FROM produtos
WHERE status_entrega_produto = "Pendente";

SELECT * FROM vw_pedidos_pendentes;
