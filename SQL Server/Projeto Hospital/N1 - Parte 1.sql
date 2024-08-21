--Atividade N1 - Bancos de Dados Relacionais
--Prof� Marilea
--Aluno: Gabriel Ant�nio
--Data: 10/04/2024

--Quest�o 1 - Listar todos os pacientes com suas respectivas consultas e situa��es:
--Consulta:
SELECT
    p.Nome AS Paciente,
    c.DataHora AS Data_Consulta,
    tc.Descricao AS Tipo_Consulta,
    sc.Descricao AS Situacao_Consulta
FROM
    Consulta c
    INNER JOIN Paciente p ON c.Identificador_Paciente = p.Identificador
    INNER JOIN TipoConsulta tc ON c.Identificador_TipoConsulta = tc.Identificador
    INNER JOIN SituacaoConsulta sc ON c.Identificador_Situacao = sc.Identificador;
--Resultado:


--Quest�o 2 - Encontrar todos os profissionais da especialidade Endocrinologia:
--Consulta:
SELECT
    p.Nome AS Profissional,
    e.Descricao AS Especialidade
FROM
    Profissional p
    INNER JOIN Especialidade e ON p.Identificador_Especialidade = e.Identificador
WHERE
    e.Descricao = 'Endocrinologia';
--Resultado:


--Quest�o 3 - Contar o n�mero de consultas por tipo de consulta para o m�s 10:
--Consulta:
SELECT
    tc.Descricao AS Tipo_Consulta,
    COUNT(*) AS Numero_Consultas
FROM
    Consulta c
    INNER JOIN TipoConsulta tc ON c.Identificador_TipoConsulta = tc.Identificador
WHERE
    MONTH(c.DataHora) = 10
GROUP BY
    tc.Descricao;
--Resultado:


--Quest�o 4 - Listar os servi�os realizados por cada profissional, incluindo a descri��o do tipo de servi�o:
--Consulta:
SELECT
    p.Nome AS Profissional,
    ts.DescricaoResumida AS Servico,
    ts.Descricao AS Descricao_Servico
FROM
    Servico s
    INNER JOIN Profissional p ON s.Identificador_Profissional = p.Identificador
    INNER JOIN TipoServico ts ON s.Identificador_TipoServico = ts.Identificador;
--Resultado:


--Quest�o 5 -  Identificar pacientes que n�o t�m conv�nio:
--Consulta:
SELECT
    p.Nome AS Paciente
FROM
    Paciente p
WHERE
    p.Identificador_TipoConsulta = 1;
--Resultado:


--Quest�o 6 - Listar todas as consultas agendadas para o Dr. Jo�o Silva, incluindo o nome do paciente, o profissional e a especialidade:
--Consulta:
SELECT
    p.Nome AS Paciente,
    pr.Nome AS Profissional,
    c.DataHora AS Data_Consulta
FROM
    Consulta c
    INNER JOIN Paciente p ON c.Identificador_Paciente = p.Identificador
    INNER JOIN Profissional pr ON c.Identificador_Profissional = pr.Identificador
WHERE
    pr.Nome = 'Dr. Jo�o Silva';
--Resultado:


--Quest�o 7 - Encontrar o n�mero de consultas em cada situa��o (por exemplo, agendada, realizada, cancelada):
--Consulta:
SELECT
    sc.Descricao AS Situacao_Consulta,
    COUNT(*) AS Numero_Consultas
FROM
    Consulta c
    INNER JOIN SituacaoConsulta sc ON c.Identificador_Situacao = sc.Identificador
GROUP BY
    sc.Descricao;
--Resultado: