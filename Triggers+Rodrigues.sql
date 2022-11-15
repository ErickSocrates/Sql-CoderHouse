-- TRIGGERS
-- 1º
-- CRIAÇÃO DA TABLEA DE LOG, ONDE SERÁ ARMAZENADO VAI TRIGGER, O USUÁRIO, O HORÁRIO E O NOME DO LIVRO INSERIDO NA TABELA CAT_LIVROS

USE LIVRARIA;

CREATE TABLE log_cat_livros(
	cod_prod VARCHAR(20),
    nome_livro VARCHAR(200),
	escritor VARCHAR(100),
    usuario VARCHAR(100),
    data DATE,
    hora TIME,
    acao VARCHAR(10)
    );
    
-- CRIAR TRIGGER PARA ALIMENTAR A TABELA log_cat_livros, QUANDO UM NOVO LIVRO FOR ADICIONADO NO CADASTRO cat_livros

DROP TRIGGER IF EXISTS tr_log_cat_livros;
CREATE  TRIGGER tr_log_cat_livros
BEFORE INSERT ON cat_livros
FOR EACH ROW
INSERT INTO log_cat_livros (cod_Prod, nome_livro, escritor, usuario, data, hora, acao) values (NEW.cod_prod, NEW.nome, NEW.escritor, user(), now(), now(), 'INSERT');

--
	-- TESTE TRIGGER tr_log_cat_livros
    
	-- INSERINDO REGISTRO TESTE

INSERT INTO cat_livros(Cod_Prod, Gênero, Nome, Editora, Ano_Publi, Escritor)
VALUES
(21,'Ficção Científica','2001: Uma Odisseia no Espaço','Aleph',2020,'Arthur C. Clarke');


	-- TABELA COM TRIGGER

select * from log_cat_livros;

-- 2º
-- CRIAR TRIGGER PARA ALIMENTAR A TABELA log_cat_livros, ARMAZENANDO O USUÁRIO QUE EXCLUIU BEM COMO O cod_prod, nome_livro e escritor

DROP TRIGGER IF EXISTS tr_log_cat_livros_exc;
CREATE  TRIGGER tr_log_cat_livros_exc
AFTER DELETE ON cat_livros
FOR EACH ROW
INSERT INTO log_cat_livros (cod_Prod, nome_livro, escritor, usuario, data, hora, acao) values (OLD.cod_prod, OLD.nome, OLD.escritor, user(), now(), now(), 'DELETE');

	-- TESTE TRIGGER tr_log_cat_livros_exc
    
	-- EXCLUINDO REGISTRO TESTE

DELETE FROM cat_livros WHERE Cod_Prod = 21;

	-- TABELA COM TRIGGER

select * from log_cat_livros;

--
-- 3º 
-- CRIAÇÃO DE TABELA DE AUDITORIA AO SE EXCLUIR ALGUM CADASTRO NA TABELA clientes

CREATE TABLE log_clientes(
	usuario VARCHAR(20),
    cpf_exc VARCHAR(200),
	data DATE,
    hora TIME,
    acao varchar(10)
    );
    
-- CRIAR TRIGGER PARA ALIMENTAR A TABELA log_clientes_exc, ARMAZENANDO O USUÁRIO QUE EXCLUIU BEM COMO O CPF EXCLUIDO

DROP TRIGGER IF EXISTS tr_log_cliente_exc;
CREATE  TRIGGER tr_log_cliente_exc
AFTER DELETE ON clientes
FOR EACH ROW
INSERT INTO log_clientes (usuario, cpf_exc, data, hora, acao ) values (user(), OLD.Cod_CPF, now(),now(), "DELETE");

-- TESTE DA TRIGGER

	-- INSERINDO REGISTRO TESTE

INSERT INTO clientes (Cod_CPF, Nome, Sobrenome, Telefone, End_Rua, End_Numero, End_Complet, End_Bairro, End_Cidade, End_UF)
VALUES
('00057538131','Erick','Sócrates',67992084467,'Rua Antenor Navarro',723,'58400976','Prata','Campina Grande','PB');

SELECT * FROM clientes;

	-- EXCLUINDO REGISTRO TESTE

DELETE FROM clientes WHERE Cod_CPF = '00057538131';

	-- TABELA COM A TRIGGER

SELECT * FROM log_clientes;


--
-- 4º 
-- CRIAR TRIGGER PARA ALIMENTAR A TABELA log_clientes QUANDO UM NOVO CADASTRO FOR INSERIDO

DROP TRIGGER IF EXISTS tr_log_cliente;
CREATE  TRIGGER tr_log_cliente
BEFORE INSERT ON clientes
FOR EACH ROW
INSERT INTO log_clientes (usuario, cpf_exc, data, hora, acao ) values (user(), NEW.Cod_CPF, now(),now(), "INSERT");

-- TESTE DA TRIGGER

	-- INSERINDO REGISTRO TESTE

INSERT INTO clientes (Cod_CPF, Nome, Sobrenome, Telefone, End_Rua, End_Numero, End_Complet, End_Bairro, End_Cidade, End_UF)
VALUES
('00057538131','Erick','Sócrates',67992084467,'Rua Antenor Navarro',723,'58400976','Prata','Campina Grande','PB');

	-- TABELA COM A TRIGGER
    
delete from log_clientes where acao = "INSERTE";

SELECT * FROM log_clientes;

