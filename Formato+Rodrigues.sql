-- CRIAR FUNÇÃO PARA TRAZER O NOME DO LIVRO
	-- TABELAS: cat_livros
		-- OBJETIVO: Consulta rápida ao nome do livro pelo código


DELIMITER $$
USE `livraria`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `nome_livros`(codigos INT) RETURNS varchar(100) CHARSET utf8mb4
    READS SQL DATA
BEGIN
	DECLARE resultado  VARCHAR(100);
    SET resultado = (SELECT Nome FROM cat_livros where Cod_Prod = codigos);
	RETURN resultado;
END$$

DELIMITER ;
;

-- TESTE DA FUNÇÃO

SELECT nome_livros(10) as NOME;

-- FUNÇÃO COM O VALOR TOTAL DO ESTOQUE
	-- TABELAS: estoque
		-- OBJETIVO: Análise do estoque pelo código do livro

DELIMITER $$
USE `livraria`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `total_estoque`(codigos INT) RETURNS FLOAT
READS SQL DATA
BEGIN
	DECLARE resultado FLOAT;
    SET resultado = (SELECT  Qtd * Vlr_Unid from estoque where Cod_Prod = codigos);
	RETURN resultado;
END$$

DELIMITER ;
;

-- TESTE DA FUNÇÃO

SELECT total_estoque(1);

