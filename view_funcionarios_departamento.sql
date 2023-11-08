CREATE DATABASE EMPRESA;

USE EMPRESA;

CREATE TABLE departamento (
    id_departamento INT PRIMARY KEY AUTO_INCREMENT,
    nome_departamento VARCHAR(255)
);

CREATE TABLE funcionario (
    id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    cargo VARCHAR(255),
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento)
);

INSERT INTO departamento (nome_departamento)
VALUES ("Administrativo");
INSERT INTO departamento (nome_departamento)
VALUES ("Vendas");
INSERT INTO departamento (nome_departamento)
VALUES ("Marketing");

INSERT INTO funcionario (nome, cargo, id_departamento)
VALUES ('João Pereira', 'Analista administrativo', 1);
INSERT INTO funcionario (nome, cargo, id_departamento)
VALUES ('Maria Alves', 'Recrutador', 2);
INSERT INTO funcionario (nome, cargo, id_departamento)
VALUES ('Carlos Santos', 'Almoxarife', 1);
INSERT INTO funcionario (nome, cargo, id_departamento)
VALUES ('Ana Rocha', 'Analista de Marketing', 3);
INSERT INTO funcionario (nome, cargo, id_departamento)
VALUES ('Pedro Ribeiro', 'Auxiliar administrativo', 1);

CREATE VIEW vw_funcionarios_departamento AS
SELECT nome, cargo
FROM funcionario
WHERE id_departamento = 1;

SELECT * FROM vw_funcionarios_departamento;
