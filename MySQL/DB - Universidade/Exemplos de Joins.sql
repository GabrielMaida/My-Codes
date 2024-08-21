USE db_universidade;


SELECT 
    tb_aluno.nome, tb_curso.nome
FROM
    tb_aluno
        INNER JOIN
    tb_curso ON tb_aluno.tb_curso_id = tb_curso.id;


SELECT 
    tb_aluno.nome, tb_aluno.cpf
FROM
    tb_candidato
        INNER JOIN
    tb_aluno ON tb_candidato.cpf = tb_aluno.cpf;
    
    
SELECT 
    tb_aluno.nome, tb_curso.nome, tb_aluno.dt_matricula
FROM
    tb_aluno
        LEFT JOIN
    tb_curso ON tb_aluno.tb_curso_id = tb_curso.id
WHERE
    tb_curso.nome = 'Psicologia'
        AND tb_aluno.dt_matricula >= '2023-01-01'
ORDER BY tb_aluno.dt_matricula ASC;



