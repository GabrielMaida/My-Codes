-- Exercícios sobre consultas SQL

-- 1. Liste o nome de todos os usuários.
SELECT Nome FROM db_biblioteca.tb_usuarios;

-- 2. Liste os cinco primeiros títulos da tabela de livros em ordem alfabética.
SELECT Titulo FROM db_biblioteca.tb_livros ORDER BY Titulo ASC LIMIT 5;

-- 3. Liste os três últimos usuários em ordem alfabética ascendente.
SELECT Nome FROM db_biblioteca.tb_usuarios ORDER BY Nome DESC LIMIT 3;

-- 4. Selecione todos os empréstimos onde o UsuarioID é 1.
SELECT * FROM db_biblioteca.tb_emprestimos WHERE UsuarioID = 1;

-- 5. Selecione todos os empréstimos onde o UsuarioID é 2, 4, 6 e ordene pelo UsuarioID de forma crescente.
SELECT * FROM db_biblioteca.tb_emprestimos WHERE UsuarioID = 2 OR UsuarioID = 4 OR UsuarioID = 6 ORDER BY UsuarioID ASC;
SELECT * FROM db_biblioteca.tb_emprestimos WHERE UsuarioID IN (2, 4, 6) ORDER BY UsuarioID ASC;

-- 6. Encontre todos os livros que têm o autor Autor 7.
SELECT Titulo FROM db_biblioteca.tb_livros WHERE Autor = "Autor 7";

-- 7. Conte quantos livros cada usuário pegou emprestado e traga também o nome do usuário.
SELECT UsuarioID,COUNT(LivroID) FROM db_biblioteca.tb_emprestimos GROUP BY UsuarioID;

-- 8. Encontre o número de livros emprestados para cada data.
SELECT COUNT(LivroID), Data_Emprestimo FROM db_biblioteca.tb_emprestimos GROUP BY Data_Emprestimo;

-- 9. Encontre todos os empréstimos feitos pelo usuário Usuário 3.
SELECT Nome,EmprestimoID FROM db_biblioteca.tb_emprestimos LEFT JOIN db_biblioteca.tb_usuarios
ON tb_emprestimos.UsuarioID = tb_usuarios.UsuarioID WHERE Nome = 'Usuario 3';

-- 10. Liste todos os usuários que emprestaram o livro com o título igual a Livro 7.


-- 11. Liste os títulos de livros que nunca foram emprestados.
SELECT Titulo FROM db_biblioteca.tb_livros LEFT JOIN db_biblioteca.tb_emprestimos
ON tb_livros.LivroID = tb_emprestimos.LivroID WHERE EmprestimoID = NULL;
