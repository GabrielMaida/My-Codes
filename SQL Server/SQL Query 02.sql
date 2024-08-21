/*Gabriel Antônio

Data: 20-03-2024*/

/*CREATE DATABASE AulaNova;

USE AulaNova;*/


CREATE TABLE livro
(
	id_livro INT PRIMARY KEY IDENTITY(1,1),
	nome_livro VARCHAR(30) NOT NULL,
	numero_paginas INT NOT NULL,
	dt_lancamento DATE NOT NULL
);

CREATE TABLE autor
(
	id_autor INT PRIMARY KEY IDENTITY(1,1),
	nome_autor VARCHAR(50) NOT NULL,
	editora_autor VARCHAR(30) NOT NULL
);

ALTER TABLE livro ADD id_autor INT;
ALTER TABLE livro ADD FOREIGN KEY (id_autor) REFERENCES autor(id_autor);


TRUNCATE TABLE livro;


INSERT INTO livro (nome_livro,numero_paginas,dt_lancamento,id_autor)
VALUES ('Harry Potter 2', 200, '2004-01-20', null);


INSERT INTO autor (nome_autor,editora_autor)
VALUES ('Machado de Assis', 'Estadão');


SELECT * FROM livro;
SELECT * FROM autor;


SELECT a.nome_livro AS 'Nome',a.dt_lancamento AS 'Lançamento',b.nome_autor AS 'Autor'
FROM livro a
LEFT JOIN autor b
ON a.id_autor = b.id_autor
WHERE b.nome_autor IS NULL;

SELECT b.id_livro AS 'Identificação Livro',b.nome_livro AS 'Livro',a.nome_autor AS 'Autor'
FROM autor a
LEFT JOIN livro b
ON a.id_autor = b.id_autor
WHERE b.nome_livro IS NULL;

SELECT COUNT(*) FROM livro;

SELECT * FROM livro WHERE numero_paginas <= 300;

SELECT * FROM livro where year(livro.dt_lancamento) = 2002;