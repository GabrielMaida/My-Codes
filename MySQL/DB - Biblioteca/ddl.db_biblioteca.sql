-- Criação da Base de Dados db_biblioteca
CREATE DATABASE `db_biblioteca`;

-- Usar Base de Dados db_biblioteca
USE `db_biblioteca`;

-- Criação da tabela Usuarios
CREATE TABLE tb_usuarios (
	UsuarioID INT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL
);

-- Criação da tabela Livros
CREATE TABLE tb_livros (
	LivroID INT PRIMARY KEY,
	Titulo VARCHAR(255) NOT NULL,
	Autor VARCHAR(255) NOT NULL
);

-- Criação da tabela Empréstimo
CREATE TABLE tb_emprestimos (
	EmprestimoID INT PRIMARY KEY,
    UsuarioID INT,
    LivroID INT,
    Data_Emprestimo DATE,
    Data_Devolucao DATE,
    FOREIGN KEY (UsuarioID) REFERENCES tb_usuarios(UsuarioID),
    FOREIGN KEY (LivroID) REFERENCES tb_livros(LivroID)
);
