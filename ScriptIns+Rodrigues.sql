USE livraria;

ALTER TABLE cat_livros ADD (
Escritor VARCHAR(100)
);

ALTER TABLE cat_livros MODIFY
Nome VARCHAR(200);

ALTER TABLE cat_livros MODIFY
Editora VARCHAR(50);

ALTER TABLE cat_livros MODIFY
Gênero VARCHAR(50);

-- INSERIR DADOS TABELA CAT_LIVROS

INSERT INTO cat_livros(Cod_Prod, Gênero, Nome, Editora, Ano_Publi, Escritor)
VALUES
(1,'Fantasia','O Senhor dos Anéis - a Sociedade do Anel','Martins Fontes',2002,'J. R. R. Tolkien'),
(2,'Fantasia','O Senhor dos Anéis - as Duas Torres','Martins Fontes',2002,'J. R. R. Tolkien'),
(3,'Fantasia','O Senhor dos Aneis: o Retorno do Rei','Martins Fontes',2002,'J. R. R. Tolkien'),
(4,'Ficção Científica','Fundação','Aleph',2009,'Isaac Asimov'),
(5,'Bibliografia','Chatô o Rei do Brasil','Companhia das letras',1994,'Fernando Morais'),
(6,'Bibliografia','Steve Jobs','Companhia das letras',2011,'Walter Isaacson'),
(7,'História','Sapiens: uma Breve Historia da Humanidade',' L&pm',2017,'Yuval Noah Harari'),
(8,'História','Homo Deus',' L&pm',2018,'Yuval Noah Harari'),
(9,'História','21 lições para o século 21',' L&pm',2019,'Yuval Noah Harari'),
(10,'Auto-Ajuda','Quem Mexeu no Meu Queijo?','Record',2020,'Spencer Johnson'),
(11,'Auto-Ajuda','Casais Inteligentes Enriquecem Juntos','Gente',2004,'Gustavo Cerbasi'),
(12,'Auto-Ajuda','Os 100 Segredos das Pessoas Felizes','Sextante',2001,'David Niven'),
(13,'Literatura Brasileira','Dom Casmurro','Ática',1978,'Machado de Assis'),
(14,'Literatura Brasileira','Iracema','Ciranda cultural',1997,'José de Alencar'),
(15,'Literatura Brasileira','Macunaíma','Villa Rica',2001,'Mário de Andrade'),
(16,'Ciência Política','O Príncipe','Hunter books',2011,'Maquiavel'),
(17,'Ciência Política','Lava Jato','Primeira Pessoa',2016,'Vladimir Netto'),
(18,'Literatura Estrangeira','O Caçador de Pipas','Nova fronteira',2005,'Khaled Hosseini'),
(19,'Literatura Estrangeira','O Código da Vinci','Sextante',2004,'Dan Brown'),
(20,'Literatura Estrangeira','A cabana','Sextante',2008,'William P. Young');

ALTER TABLE estoque MODIFY
Vlr_Unid DECIMAL (10,2);

ALTER TABLE estoque MODIFY
Vlr_Total DECIMAL (10,2);

-- INSERIR DADOS TABELA ESTOQUE

INSERT INTO estoque(Cod_Prod, Qtd, Vlr_Unid, Vlr_Total)
VALUES
(1,52,40.99,2131.48),
(2,100,45.2,4520),
(3,70,50.1,3507),
(4,10,149.99,1499.9),
(5,3,6.3,18.9),
(6,5,20.15,100.75),
(7,15,50,750),
(8,27,55,1485),
(9,29,60,1740),
(10,33,80.8,2666.4),
(11,100,15.1,1510),
(12,15,75.65,1134.75),
(13,2,10.99,21.98),
(14,4,10.99,43.96),
(15,6,10.99,65.94),
(16,67,8,536),
(17,40,25,1000),
(18,88,34,2992),
(19,93,36,3348),
(20,100,37,3700);

ALTER TABLE loja MODIFY
End_Rua VARCHAR(50);

ALTER TABLE loja MODIFY
Nome VARCHAR(50);

ALTER TABLE loja MODIFY
End_Complet VARCHAR(50);

ALTER TABLE loja MODIFY
End_Complet VARCHAR(50);

ALTER TABLE loja MODIFY
End_Bairro VARCHAR(50);

ALTER TABLE loja MODIFY
End_Cidade VARCHAR(50);

-- INSERIR DADOS TABELA LOJA

INSERT INTO loja (Cod_Loja, Nome, CNPJ, Telefone, End_Rua, End_Numero, End_Complet, End_Bairro, End_Cidade, End_UF)
VALUES
(143,'Loja_SP',38466789000143, 11345678765, 'Travessa Maestro Cardim', 75, 'Shopping center', 'Jardins', 'São Paulo', 'SP'),
(170,'Loja_GO',76370580000170, 6125153408, 'Quadra QB 31', 588, 'Mansões Pôr do Sol', 'Águas Lindas de Goiás', 'Goiás', 'GO'),
(125,'Loja_MG',94706905000125, 3135130931, 'Beco Seis', 135, 'Pôr do Sol', 'São Francisco','Coronel Fabriciano','MG'),
(146,'Loja_PR',22418392000146, 4126635714, 'Travessa Murtede', 117, 'Pôr do Sol', 'Santa Terezinha','Colombo','PR');

ALTER TABLE pedidos MODIFY
Cod_CPF VARCHAR(11);

ALTER TABLE clientes MODIFY
Cod_CPF VARCHAR(11);

ALTER TABLE clientes MODIFY
Nome VARCHAR(100);

ALTER TABLE clientes MODIFY
Sobrenome VARCHAR(100);

ALTER TABLE clientes MODIFY
End_Rua VARCHAR(100);

ALTER TABLE clientes MODIFY
End_Complet VARCHAR(100);

ALTER TABLE clientes MODIFY
End_Bairro VARCHAR(100);

ALTER TABLE clientes MODIFY
End_Cidade VARCHAR(100);

-- INSERIR DADOS TABELA CLIENTES

INSERT INTO clientes (Cod_CPF, Nome, Sobrenome, Telefone, End_Rua, End_Numero, End_Complet, End_Bairro, End_Cidade, End_UF)
VALUES
('06027205830','Sophie','Sarah Martins',83998682459,'Rua Antenor Navarro',723,'58400976','Prata','Campina Grande','PB'),
('74499106400','Tereza','Heloisa Bárbara Costa',83981655281,'Travessa Marcone Coutinho',796,'58700205','Centro','Patos','PB'),
('22197478168','Pietro','Ricardo Breno Assis',61983713594,'Quadra QE 17 Conjunto I',100,'71050092','Guará II','Brasília','DF'),
('11552598829','Kaique','Theo da Mota',77989994321,'Rua T',781,'45070450','São Pedro','Vitória da Conquista','BA'),
('76679253721','Milena','Louise Ferreira',86996924361,'Rua Santa Rita de Cássia',614,'64212300','Alto Santa Maria','Parnaíba','PI'),
('18707312555','Raul','César Pinto',66996935708,'Avenida das Águias',627,'78553240','Residencial das Acácias','Sinop','MT'),
('51669309401','Murilo','Augusto Márcio Barros',41984144237,'Rua Anselmo Pilati',991,'82120550','Pilarzinho','Curitiba','PR'),
('91632221756','Bianca','Sophie Bianca Teixeira',81994424766,'Rua Antônio Carlos Mergulhão',809,'53402705','Fragoso','Paulista','PE'),
('26880615422','Giovanni','Matheus Vieira',48985573280,'Rua Antônio Silveira',131,'88810436','Mina do Mato','Criciúma','SC'),
('03796551874','Clara','Ayla Julia de Paula',66999610565,'Avenida Guararapes',622,'78730314','Jardim Iguassu','Rondonópolis','MT'),
('96157068507','Pedro','Tiago Figueiredo',53996942231,'Passeio Um',329,'96040604','Fragata','Pelotas','RS'),
('37062475009','Valentina','Olivia Beatriz da Mata',35994401354,'Praça Antônio Pernambuco Chaves',621,'37002620','Centro','Varginha','MG'),
('53895487600','Pietra','Allana Beatriz Silva',96986079062,'Rua Mendes de Sá',464,'68908512','São Lázaro','Macapá','AP'),
('99072294661','Andrea','Joana Rezende',43998921260,'Rua Gavião-de-cauda-barrada',676,'86702772','Jardim Mônaco','Arapongas','PR'),
('00013254774','Bernardo','Edson Bernardes',83989183137,'Rua Alzinira Luciana de Oliveira',281,'58309846','Comercial Norte','Bayeux','PB'),
('08607937707','Sueli','Flávia Tatiane Araújo',82995703367,'Rua Antenor Gomes de Oliveira',864,'57055905','Farol','Maceió','AL'),
('41013665511','Raul','Vicente Calebe Dias',47998428149,'Rua São Floriano',197,'89230445','Jarivatuba','Joinville','SC'),
('91705507948','Kauê','Tiago Jesus',45996112953,'Rua Machado de Assis',314,'85909350','Vila Pioneiro','Toledo','PR'),
('43014459275','Lucca','Felipe Lucas Castro',34998583688,'Praça Lisboa',213,'38444330','Santiago','Araguari','MG'),
('45168890563','Ian','Carlos Benedito da Paz',21982681994,'Rua Euzebio de Farias',202,'21920110','Tauá','Rio de Janeiro','RJ');

ALTER TABLE pedidos MODIFY
Vlr_Total DECIMAL (10,2);

ALTER TABLE pedidos MODIFY
Vlr_Unid DECIMAL (10,2);

-- INSERIR DADOS TABELA PEDIDOS

INSERT INTO pedidos (Cod_CPF, Cod_Pedido, Cod_Prod, Qtd, Data_Hora, Nota_Fiscal, Cod_loja, Vlr_Unid, Vlr_Total)
VALUES
('06027205830',1,3,2,'2022-8-14 9:17:00',123132,125,50.10,100.2),
('74499106400',2,5,10,'2022-8-14 13:00:00',1232510,143,6.30,63),
('22197478168',3,1,3,'2022-8-14 13:15:00',123313,146,40.99,122.97),
('11552598829',4,1,4,'2022-8-14 19:59:00',123414,170,40.99,163.96),
('11552598829',5,2,2,'2022-8-14 22:22:00',123522,170,45.20,90.4),
('18707312555',6,20,5,'2022-8-15 7:10:00',1236205,146,37.00,185),
('51669309401',7,19,1,'2022-8-15 9:30:00',1237191,125,36.00,36),
('91632221756',8,17,2,'2022-8-15 18:35:00',1238172,143,25.00,50),
('26880615422',9,15,1,'2022-8-16 9:17:00',1239151,146,10.99,10.99),
('03796551874',10,12,2,'2022-8-16 13:00:00',12310122,170,75.65,151.3),
('37062475009',11,7,1,'2022-8-16 13:15:00',1231171,125,50.00,50),
('37062475009',12,9,2,'2022-8-16 19:59:00',1231292,125,60.00,120),
('53895487600',13,10,1,'2022-8-16 22:22:00',12313101,125,80.80,80.8),
('99072294661',14,4,1,'2022-8-17 7:10:00',1231441,143,149.99,149.99),
('00013254774',15,4,1,'2022-8-17 9:30:00',1231541,146,149.99,149.99),
('08607937707',16,6,5,'2022-8-17 18:35:00',1231665,170,20.15,100.75),
('43014459275',17,8,3,'2022-8-18 9:17:00',1231783,143,55.00,165),
('43014459275',18,11,1,'2022-8-18 13:00:00',12318111,143,15.10,15.1),
('91705507948',19,13,1,'2022-8-18 13:15:00',12319131,146,10.99,10.99),
('45168890563',20,15,1,'2022-8-18 19:59:00',12320151,146,10.99,10.99);

-- FIM 

-- SELECTS PARA TESTE

SELECT * FROM cat_livros;
SELECT * FROM clientes;
SELECT * FROM estoque;
SELECT * FROM loja;
SELECT * FROM pedidos;