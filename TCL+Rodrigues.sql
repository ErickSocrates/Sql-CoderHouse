-- DELETAR
USE livraria;

START TRANSACTION;
DELETE FROM pedidos WHERE Cod_loja = 125;
-- COMMIT -- PARA CONFIRMAR
ROLLBACK; -- PARA DESFAZER


-- INSERÇÃO

START TRANSACTION;

INSERT INTO loja (Cod_Loja, Nome, CNPJ, Telefone, End_Rua, End_Numero, End_Complet, End_Bairro, End_Cidade, End_UF)
VALUES
(144,'Loja_MS',38466789000188, 6733334455, 'Rui Barbosa', 175, 'Centro Comercial', 'Centro', 'Campo Grande', 'MS'),
(145,'Loja_DF',38466789000155, 6133334455, 'Av Presidente', 105, 'Pontilhao', 'Asa Norte', 'Brasília', 'DF'),
(200,'Loja_MT',76370580000199, 6625153408, 'Av Afonso Pena', 1588, 'Esquina', 'Centrinho', 'Cuiaba', 'MT'),
(250,'Loja_GO',76370580000155, 6232017124, 'Oito', 242, 'Esquina', 'St Central', 'Goiania ', 'GO');

SAVEPOINT lote_loja1;

INSERT INTO loja (Cod_Loja, Nome, CNPJ, Telefone, End_Rua, End_Numero, End_Complet, End_Bairro, End_Cidade, End_UF)
VALUES
(300,'Loja_PA',94597905000133, 9132017390, 'Augusto Correa', 001, 'Universidade', 'Guamá','Belem','PA'),
(400,'Loja_SC',22418392000146, 4126635714, 'Sao Paulo', 766, 'Centro Comercial', 'Victor Konder','Blumenau ','SC'),
(410,'Loja_CE',22411232000120, 8534448300, 'Dr. Thompson Bulcao', 830, 'Centro Comercial', 'Luciano Cavalcante','Fortaleza','CE'),
(500,'Loja_BA',94597905000146, 7133202191, 'Ladeira da Fonte das Pedras', 150, 'Estadio', 'Nazare','Salvador','BA');


SAVEPOINT lote_loja2;

-- ROLLBACK TO lote_loja1;

-- RELEASE SAVEPOINT lote_loja1; -- EXCLUI O SAVEPOINT

COMMIT;



