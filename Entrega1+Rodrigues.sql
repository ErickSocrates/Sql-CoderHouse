create database livraria

-- Table: CLIENTES
CREATE TABLE CLIENTES (
    Cod_CPF numeric(11) NOT NULL,
    Nome Varchar(12) NOT NULL,
	Sobrenome Varchar(12) NOT NULL,
    Telefone numeric (11) NOT NULL,
    End_Rua Varchar(25) NOT NULL,
    End_Numero numeric(5) NOT NULL,
    End_Complet Varchar(20) NOT NULL,
    End_Bairro Varchar(10) NOT NULL,
    End_Cidade Varchar(10) NOT NULL,
    End_UF Varchar(2) NOT NULL,
    CONSTRAINT PK_CLIENTES PRIMARY KEY (Cod_CPF)
);

-- Table: PEDIDOS
CREATE TABLE PEDIDOS (
    Cod_CPF numeric(11) NOT NULL,
    Cod_Pedido int NOT NULL,
	Cod_Prod int NOT NULL,
    Qtd int NOT NULL,
    Data_Hora datetime NOT NULL,
    Nota_Fiscal int NOT NULL,
    Cod_loja int NOT NULL,
    Vlr_Unid decimal (4,2) NOT NULL,
    Vlr_Total decimal (4,2) NOT NULL,
    CONSTRAINT PK_PEDIDOS PRIMARY KEY (Cod_Pedido)
);

-- Table: ESTOQUE
CREATE TABLE ESTOQUE (
   	Cod_Prod int NOT NULL,
    Qtd int NOT NULL,
    Vlr_Unid decimal (4,2) NOT NULL,
    Vlr_Total decimal (4,2) NOT NULL,
    CONSTRAINT PK_ESTOQUE PRIMARY KEY (Cod_Prod)
  );
  
-- Table: CAT_LIVROS
CREATE TABLE CAT_LIVROS (
   	Cod_Prod int NOT NULL,
    Gênero varchar (12) NOT NULL,
    Nome  varchar (12)  NOT NULL,
    Editora  varchar (12)  NOT NULL,
    Ano_Publi numeric (4) NOT NULL,
    CONSTRAINT PK_CAT_LIVROS PRIMARY KEY (Cod_Prod)
  );
  
  
-- Table: LOJA
CREATE TABLE LOJA (
   	Cod_Loja int NOT NULL,
    Nome varchar (12) NOT NULL,
    CNPJ  numeric (14)  NOT NULL,
    Telefone  numeric (11)  NOT NULL,
    End_Rua Varchar(25) NOT NULL,
    End_Numero numeric(5) NOT NULL,
    End_Complet Varchar(20) NOT NULL,
    End_Bairro Varchar(10) NOT NULL,
    End_Cidade Varchar(10) NOT NULL,
    End_UF Varchar(2) NOT NULL,
	CONSTRAINT PK_LOJA PRIMARY KEY (Cod_Loja)
  );
  
-- foreign keys

-- Reference: FK_PEDIDOS (table: PEDIDOS)
ALTER TABLE PEDIDOS ADD CONSTRAINT FK_PEDIDOS_CLIENTES FOREIGN KEY FK_PEDIDOS_CLIENTES (Cod_CPF)
    REFERENCES CLIENTES (Cod_CPF);
    
-- Reference: FK_PEDIDOS (table: PEDIDOS)
ALTER TABLE PEDIDOS ADD CONSTRAINT FK_PEDIDOS_ESTOQUE FOREIGN KEY FK_PEDIDOS_ESTOQUE (Cod_Prod)
    REFERENCES ESTOQUE (Cod_Prod);
    
-- Reference: FK_PEDIDOS (table: PEDIDOS)
ALTER TABLE PEDIDOS ADD CONSTRAINT FK_PEDIDOS_LOJA FOREIGN KEY FK_PEDIDOS_LOJA (Cod_Loja)
    REFERENCES LOJA (Cod_Loja);
    
-- Reference: FK_ESTOQUE (table: ESTOQUE)
ALTER TABLE ESTOQUE ADD CONSTRAINT FK_PEDIDOS_CAT_LIVROS FOREIGN KEY FK_PEDIDOS_CAT_LIVROS (Cod_Prod)
    REFERENCES CAT_LIVROS (Cod_Prod);

