--CREATE DATABASE Aula;

--USE Aula;

/*
CREATE TABLE pai
(id_pai INT IDENTITY, -- Chave Primária
nome_pai VARCHAR(100),
CONSTRAINT pk_pai PRIMARY KEY (id_pai));

SELECT * FROM pai;

CREATE TABLE filho
(id_filho INT IDENTITY,
nome_filho VARCHAR(150),
id_pai INT,
CONSTRAINT pk_filho PRIMARY KEY (id_filho),
CONSTRAINT fk_pai FOREIGN KEY (id_pai)
REFERENCES pai (id_pai));*/

--DROP TABLE Fornecedor,Compra,Categoria,Produto,Venda,Estoque,QtdProdCompra,ItemVenda;

CREATE TABLE Fornecedor
(
	id_fornecedor INT IDENTITY(1,1) PRIMARY KEY,
	nome_fornecedor VARCHAR(100) NOT NULL,  
	telefone_fornecedor FLOAT NOT NULL,  
	email_fornecedor VARCHAR(100) NOT NULL
);

CREATE TABLE Compra 
( 
	 cod_compra INT IDENTITY(1,1) PRIMARY KEY,  
	 dt_compra DATE NOT NULL,  
	 id_fornecedor INT NOT NULL,  
	 CONSTRAINT fk_compra_fornecedor FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor (id_fornecedor)
);

CREATE TABLE Categoria 
( 
	 id_categoria INT IDENTITY(1,1) PRIMARY KEY,  
	 nome_categoria VARCHAR(50) NOT NULL,  
	 CONSTRAINT uc_nome_categoria UNIQUE (nome_categoria)
); 

CREATE TABLE Produto
(
    cod_produto INT IDENTITY(1,1) PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    dt_vencimento DATE,
    id_categoria INT,
    CONSTRAINT fk_produto_categoria FOREIGN KEY (id_categoria) REFERENCES Categoria (id_categoria),
    CONSTRAINT uc_nome_produto UNIQUE (nome_produto)
);

CREATE TABLE Venda 
( 
	 cod_venda INT IDENTITY(1,1) PRIMARY KEY,  
	 dt_venda DATE NOT NULL,  
	 valor_venda FLOAT
); 

CREATE TABLE Estoque 
( 
	 cod_produto INT NOT NULL,  
	 qtd_produto INT NOT NULL,  
	 cod_venda INT,
	 CONSTRAINT fk_estoque_produto FOREIGN KEY (cod_produto) REFERENCES Produto (cod_produto),
	 CONSTRAINT fk_estoque_venda FOREIGN KEY (cod_venda) REFERENCES Venda (cod_venda)
); 

CREATE TABLE QtdProdCompra 
( 
	 cod_compra INT NOT NULL,  
	 cod_produto INT NOT NULL,  
	 qtd_produto INT NOT NULL,
	 CONSTRAINT fk_qtdprodcompra_compra FOREIGN KEY (cod_compra) REFERENCES Compra (cod_compra),
	 CONSTRAINT fk_qtdprodcompra_produto FOREIGN KEY (cod_produto) REFERENCES Produto (cod_produto)
); 

CREATE TABLE ItemVenda 
( 
	 cod_venda INT NOT NULL,  
	 cod_produto INT,  
	 qtd_produto INT NOT NULL,
	 CONSTRAINT fk_itemvenda_venda FOREIGN KEY (cod_venda) REFERENCES Venda (cod_venda),
	 CONSTRAINT fk_itemvenda_produto FOREIGN KEY (cod_produto) REFERENCES Produto (cod_produto)
);
