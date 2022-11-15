
-- STORE PROCEDURE 

-- 1º SELECIONA E ORDENAR A TABELA clientes PELO CAMPO ESCOLHIDO PELO USUÁRIO
	
DELIMITER $$
USE `livraria`$$
DROP PROCEDURE IF EXISTS sp_ordena_clientes;
CREATE PROCEDURE sp_ordena_clientes (IN campo CHAR(20), IN tipo CHAR(4))
BEGIN
	IF campo <> '' THEN
			SET @campoorder = concat('ORDER BY ', campo);
		ELSE
			SET @campoorder = '';
	END IF;
    
    SET @clausula = concat('SELECT * FROM clientes ', @campoorder,' ', tipo);
    PREPARE runSql from @clausula;
    EXECUTE runSql;
    
END $$
;

-- PARA USAR A PROCEDURE sp_ordena_clientes utilizar a SINTAXE:
	-- call sp_ordena_clientes('campo*', 'ASC' OU 'DESC')
    -- *'CAMPO' pode ser 'Cod_CPF', 'Nome', 'Sobrenome', 'Telefone', 'End_Rua', 'End_Numero', 'End_Complet', 'End_Bairro', 'End_Cidade', 'End_UF'

call sp_ordena_clientes('Nome','Asc');
call sp_ordena_clientes('Nome','Desc');
-- 

-- 2º INSERIR UM NOVO LIVRO NA TABELA cat_livros
	-- Para inserção, colocar os seguintes dados (ID, GENERO, NOME, EDITORA, ANO DE PUBLICAÇÃO E NOME DO ESCRITOR);

DELIMITER $$
USE `livraria`$$
DROP PROCEDURE IF EXISTS sp_inserir_livros;
CREATE PROCEDURE sp_inserir_livros (
	 IN codigo CHAR(4),
     IN genero CHAR(50),
     IN nome CHAR(200),
     IN editora CHAR(50),
     IN ano decimal(4,0),
     IN escritor CHAR(100))
BEGIN
		IF codigo  = '' OR genero = '' OR nome = '' OR editora = '' OR ano = '' OR escritor = '' THEN
		SELECT 'ERRO AO CADASTRAR LIVRO, FAVOR INFORMAR TODOS OS CAMPOS "CODIGO", "GENERO", "NOME", "EDITORA", "ANO PUBLICAÇÃO" E "ESCRITOR"' AS MENSAGEM ;
    ELSE
		SET @nvl = CONCAT( "INSERT INTO cat_livros(Cod_Prod, Gênero, Nome, Editora, Ano_Publi, Escritor) VALUES", "('", codigo ,"','",genero,"','",nome,"','",editora,"','",ano,"','",escritor,"');");
PREPARE runSql FROM @nvl;
EXECUTE runSql;
	END IF;
END $$

--
 
call sp_inserir_livros(21,'teste','teste','teste',2022,'teste');

SELECT * FROM cat_livros;
