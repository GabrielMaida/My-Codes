#Avaliação N2 - Bancos de Dados (ADS 1)
#Prof. Marcos Marques
#Alunos: Gabriel Antônio e Jessica Lopez

-- Comando para utilizar o banco de dados db_universidade
USE db_universidade;


-- Questão 1:
# Mostra a quantidade de candidatos.
SELECT COUNT(*) AS Candidatos
FROM tb_candidato;

# Mostra o nome dos cursos, seguido da quantidade de alunos em cada um
SELECT tb_curso.nome AS Curso, COUNT(tb_aluno.id) AS Alunos
FROM tb_curso
LEFT JOIN tb_aluno
ON tb_curso.id = tb_aluno.tb_curso_id
GROUP BY Curso
ORDER BY Alunos DESC;


-- Questão 2:
# Mostra as equipes de admissões com mais avaliações
SELECT tb_equipe_admissoes.membro_equipe AS Membros_Admissao, COUNT(tb_avaliacao.id) AS Avaliacoes
FROM  tb_equipe_admissoes
JOIN tb_avaliacao
ON tb_equipe_admissoes.id = tb_avaliacao.tb_equipe_admissoes_id
GROUP BY Membros_Admissao
ORDER BY Avaliacoes DESC LIMIT 0,5;


-- Questão 3:
# Mostra os 3 cursos com mais alunos
SELECT tb_curso.nome AS Curso, COUNT(tb_aluno.id) AS Alunos
FROM tb_curso
LEFT JOIN tb_aluno
ON tb_curso.id = tb_aluno.tb_curso_id
GROUP BY tb_curso.id
ORDER BY Alunos DESC LIMIT 0,3;

# Mostra os 3 cursos com menos alunos
SELECT tb_curso.nome AS Curso, COUNT(tb_aluno.id) AS Alunos
FROM tb_curso
LEFT JOIN tb_aluno
ON tb_curso.id = tb_aluno.tb_curso_id
GROUP BY tb_curso.id
ORDER BY Alunos ASC LIMIT 0,3;


-- Questão 4:
# Mostra a quantidade de alunos de cada idade
SELECT YEAR(curdate())-YEAR(tb_aluno.dt_nascimento) AS Idade, COUNT(YEAR(curdate())-YEAR(tb_aluno.dt_nascimento)) AS Quantidade_Alunos
FROM tb_aluno
GROUP BY Idade
ORDER BY Idade ASC;


-- Questão 5:
# Mostra os 5 professores mais antigos da universidade com base na data de contratação
SELECT tb_professor.nome AS Nome, tb_professor.dt_contrato AS Data_Contrato
FROM tb_professor
ORDER BY Data_Contrato ASC LIMIT 0,5;

# Mostra os 5 professores mais recentes da universidade com base na data de contratação
SELECT tb_professor.nome AS Nome, tb_professor.dt_contrato AS Data_Contrato
FROM tb_professor
ORDER BY Data_Contrato DESC LIMIT 0,5;


-- Questão 6:
# Mostra as 10 disciplinas mais frequentadas e seu dia da semana
SELECT d.nome AS Disciplina, COUNT(hd.tb_aluno_id) AS Alunos, d.dia_semana AS Dia_Semana
FROM tb_disciplina AS d
LEFT JOIN tb_aluno_has_tb_disciplina AS hd
ON hd.tb_disciplina_id = d.id
GROUP BY Disciplina
ORDER BY Alunos DESC LIMIT 0,10;


-- Questão 7:
# Mostra a quantidade de alunos em cada atividade extracurricular
SELECT ax.nome AS Atividade, COUNT(hx.tb_aluno_id) AS Alunos
FROM tb_atividades_extra AS ax
JOIN tb_aluno_has_tb_atividades_extra AS hx
ON ax.id = hx.tb_atividades_extra_id
GROUP BY Atividade
ORDER BY Alunos DESC;


-- Questão 8:
# Mostra os membros da administração responsáveis por cada atividade extracurricular
SELECT x.nome AS Atividade, a.membros AS Membros
FROM tb_administracao AS a
JOIN tb_atividades_extra AS x
ON x.id = a.tb_atividades_extra_id
ORDER BY Atividade ASC;


-- Questão 9:
# Mostra quantas vezes cada tipo de avaliação foi utilizada
SELECT ta.tipo_avaliacao AS Tipo_Avaliação, COUNT(ta.id)AS Quantidade
FROM tb_avaliacao AS a
JOIN tb_tipo_avaliacao AS ta
ON a.tb_tipo_avaliacao_id  =  ta.id
GROUP BY Tipo_Avaliação
ORDER BY Quantidade DESC;

# Mostra a porcentagem de aprovação da universidade com base na razão entre o total de alunos e o total de candidatos
SELECT ROUND((SELECT COUNT(*) FROM tb_aluno) / (SELECT COUNT(*) FROM tb_candidato) * 100, 0)AS Taxa_Aprovacao;


-- Questão 10:
# Mostra a quantidade de alunos matriculados em cada uma das disciplinas
SELECT d.nome AS Disciplina, COUNT(hd.tb_aluno_id) AS Alunos
FROM tb_disciplina AS d
LEFT JOIN tb_aluno_has_tb_disciplina AS hd
ON hd.tb_disciplina_id = d.id
GROUP BY Disciplina
ORDER BY Alunos DESC;

