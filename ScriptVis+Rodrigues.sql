-- CRIAR 5 VIEWS

USE livraria;

-- SOMAR VALOR TOTAL POR LOJA
	-- TABELAS: pedidos, loja
		-- OBJETIVO: Rankiamento das lojas

CREATE OR REPLACE VIEW vw_total_loja AS
SELECT  p.Cod_loja, l.Nome,  SUM(Vlr_Total) AS total
FROM pedidos as p
LEFT JOIN loja as l on (p.Cod_loja = l.Cod_loja)
GROUP BY p.Cod_loja;

select * from vw_total_loja;

-- TRAZER APENAS AS LOJAS QUE JÁ VENDERAM
	-- TABELAS: loja, pedidos
		-- OBJETIVO: Verificar andamento da campanha de mkt

CREATE OR REPLACE VIEW vw_loja_vendeu AS
SELECT DISTINCT l.Cod_loja, l.Nome
FROM loja as l
INNER JOIN pedidoS as p on (p.Cod_loja = l.Cod_loja)
WHERE l.Cod_Loja IN (SELECT p.cod_loja FROM pedidos);

select * from vw_loja_vendeu;

-- TRAZER CLIENTES QUE COMPRARAM DA LOJA DO ESTADO DIFERENTE DO DA RESIDENCIA
	-- TABELAS: clientes, pedidos, loja
		-- OBJETIVO: Entender por que os clientes não compraram na loja da residência;

CREATE OR REPLACE VIEW vw_cliente_dif_uf AS
SELECT DISTINCT c.Cod_CPF, c.Nome, c.End_UF as Cliente_UF, l.End_UF as Loja_UF
FROM clientes as c
INNER JOIN pedidos as p on (c.Cod_CPF = p.Cod_CPF)
INNER JOIN loja as l on (l.Cod_Loja = p.Cod_Loja)
WHERE c.End_UF  <> l.End_UF    
ORDER BY Nome;

select * from vw_cliente_dif_uf;

-- TRAZER CLIENTES QUE COMPRARAM MAIS DE UMA VEZ
	-- TABELAS: pedidos, clientes
		-- OBJETIVO: Analisar recorrência

CREATE OR REPLACE VIEW vw_cliente_recorrente AS
SELECT DISTINCT p.Cod_CPF, c.Nome, c.End_UF as Cliente_UF, COUNT(p.Cod_CPF) as QTD
FROM pedidos as p
INNER JOIN clientes as c on (c.Cod_CPF = p.Cod_CPF)
GROUP BY p.Cod_CPF
HAVING QTD <> 1;

select * from vw_cliente_recorrente;

-- TRAZER LIVROS COM ESTOQUE MENOR QUE 10
	-- TABELAS: estoque, cat_livros
		-- OBJETIVO: Verificar livros para repor estoque;

CREATE OR REPLACE VIEW vw_estoque_menor10 AS
SELECT e.cod_prod, c.nome
FROM estoque as e
INNER JOIN cat_livros as c on ( e.cod_prod = c.cod_prod )
WHERE Qtd < 10;

select * from vw_estoque_menor10;


