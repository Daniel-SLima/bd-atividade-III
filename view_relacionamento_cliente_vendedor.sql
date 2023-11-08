CREATE DATABASE COMERCIOVENDA;

USE COMERCIOVENDA;

CREATE TABLE vendedor (
    id_vendedor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    email VARCHAR(255)
);

CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    email VARCHAR(255),
    id_vendedor INT,
    FOREIGN KEY (id_vendedor) REFERENCES vendedor(id_vendedor)
);

INSERT INTO vendedor (nome, email)
VALUES
    ('Carla Silva', 'carla@gmail.com'),
    ('Paulo Santos', 'paulo@gmail.com'),
    ('Fernanda Pereira', 'fernanda@gmail.com');

INSERT INTO cliente (nome, email, id_vendedor)
VALUES
    ('Mariana', 'mariana@gmail.com', 1),
    ('Luis', 'luis@gmail.com', 2),
    ('Pedro', 'pedro@gmail.com', 1),
    ('Joana', 'joana@gmail.com', 3),
    ('Sandra', 'sandra@gmail.com', 2);

CREATE VIEW vw_relacionamento_cliente_vendedor AS
SELECT
    c.nome AS "Nome do Cliente", c.email AS "Email do Cliente",
    v.nome AS "Nome do Vendedor", v.email AS "Email do Vendedor"
FROM
    cliente c
JOIN
    vendedor v ON c.id_vendedor = v.id_vendedor;

SELECT * FROM vw_relacionamento_cliente_vendedor;
