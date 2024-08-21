-- DROP DATABASE Lojajogos;

CREATE DATABASE LojaJogos;

USE LojaJogos;


CREATE TABLE console (
    id_console INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    desenvolvedora VARCHAR(50),
    preco FLOAT NOT NULL,
    CONSTRAINT PK_console PRIMARY KEY (id_console)
);

CREATE TABLE cliente (
    id_cliente INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    cpf BIGINT NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    email VARCHAR(50),
    dt_nascimento DATE NOT NULL,
    CONSTRAINT PK_cliente PRIMARY KEY (id_cliente)
);

CREATE TABLE vendedor (
    id_vendedor INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    cpf BIGINT NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    dt_nascimento DATE NOT NULL,
    CONSTRAINT PK_vendedor PRIMARY KEY (id_vendedor)
);

CREATE TABLE formaPagamento (
    id_formaPagamento INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(50) NOT NULL,
    CONSTRAINT PK_formaPagamento PRIMARY KEY (id_formaPagamento)
);

CREATE TABLE jogo (
    id_jogo INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    desenvolvedora VARCHAR(50),
    preco FLOAT NOT NULL,
    classificacaoIndicativa INT NOT NULL,
    id_console INT NOT NULL,
    CONSTRAINT PK_jogo PRIMARY KEY (id_jogo),
    CONSTRAINT FK_jogo_console FOREIGN KEY (id_console)
        REFERENCES console (id_console)
);

CREATE TABLE venda (
    id_venda INT NOT NULL AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_vendedor INT NOT NULL,
    dt_venda DATETIME NOT NULL,
    valor_total FLOAT NOT NULL,
    id_formaPagamento INT NOT NULL,
    CONSTRAINT PK_venda PRIMARY KEY (id_venda),
    CONSTRAINT FK_venda_cliente FOREIGN KEY (id_cliente)
        REFERENCES cliente (id_cliente),
    CONSTRAINT FK_venda_vendedor FOREIGN KEY (id_vendedor)
        REFERENCES vendedor (id_vendedor),
    CONSTRAINT FK_venda_formaPagamento FOREIGN KEY (id_formaPagamento)
        REFERENCES formaPagamento (id_formaPagamento)
);

CREATE TABLE venda_has_jogo (
    id_jogo INT NOT NULL,
    id_venda INT NOT NULL,
    CONSTRAINT PK_venda_has_jogo PRIMARY KEY (id_jogo , id_venda),
    CONSTRAINT FK_vendahasjogo_venda FOREIGN KEY (id_venda)
        REFERENCES venda (id_venda),
    CONSTRAINT FK_vendahasjogo_jogo FOREIGN KEY (id_jogo)
        REFERENCES jogo (id_jogo)
);

CREATE TABLE venda_has_console (
    id_console INT NOT NULL,
    id_venda INT NOT NULL,
    CONSTRAINT PK_venda_has_console PRIMARY KEY (id_console , id_venda),
    CONSTRAINT FK_vendahasconsole_venda FOREIGN KEY (id_venda)
        REFERENCES venda (id_venda),
    CONSTRAINT FK_vendahasconsole_console FOREIGN KEY (id_console)
        REFERENCES console (id_console)
);