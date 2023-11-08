CREATE DATABASE autopreco;

USE autopreco;

CREATE TABLE tb_produtos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255),
  marca VARCHAR(255),
  valor DOUBLE
);

DELIMITER //

CREATE TRIGGER tg_aumentar_valor
BEFORE UPDATE ON tb_produtos
FOR EACH ROW
BEGIN
    SET NEW.valor = NEW.valor * 1.10;
END //

DELIMITER ;

INSERT INTO tb_produtos (nome, marca, valor)
VALUES ('Arroz', 'Tio João', 5.50);

UPDATE tb_produtos
SET valor = 6.05
WHERE id = 1;

SELECT * FROM tb_produtos;
