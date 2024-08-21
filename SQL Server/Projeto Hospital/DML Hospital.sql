use HospitalSaude
go


INSERT INTO TipoConsulta (Descricao) VALUES ('Particular')
INSERT INTO TipoConsulta (Descricao) VALUES ('Convênio')
go

INSERT INTO Convenio (Descricao) VALUES ('PARTICULAR')
INSERT INTO Convenio (Descricao) VALUES ('UNIMED')
INSERT INTO Convenio (Descricao) VALUES ('STO ANTONIO ')
INSERT INTO Convenio (Descricao) VALUES ('Convenio D')
INSERT INTO Convenio (Descricao) VALUES ('Convenio E')
INSERT INTO Convenio (Descricao) VALUES ('Convenio F')
go


INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (12345678901, 'João Silva', '1980-05-05', 1, 1)
INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (23456789012, 'Maria Santos', '1990-04-15', 2, 2)
INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (34567890123, 'Pedro Oliveira', '1975-09-25', 1, 1)
INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (45678901234, 'Carla Pereira', '1985-10-10', 2, 4)
INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (56789012345, 'Lucas Costa', '1995-07-30', 1, 1)
INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (67890123456, 'Fernanda Moraes', '2000-11-20', 2, 6)
INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (78901234567, 'Gabriel Alves', '1992-06-05', 1, 1)
INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (89012345678, 'Amanda Souza', '1978-12-15', 2, 3)
INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (90123456789, 'Leonardo Dias', '1982-01-25', 1, 1)
INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (12345678901, 'Roberta Lima', '1970-03-05', 2, 5)


go

INSERT INTO Especialidade (Descricao) VALUES ('Clínica Geral')
INSERT INTO Especialidade (Descricao) VALUES ('Dermatologia')
INSERT INTO Especialidade (Descricao) VALUES ('Endocrinologia')
INSERT INTO Especialidade (Descricao) VALUES ('Enfermagem')
INSERT INTO Especialidade (Descricao) VALUES ('Ginecologia')
INSERT INTO Especialidade (Descricao) VALUES ('Neurologia')
INSERT INTO Especialidade (Descricao) VALUES ('Oftalmologia')
INSERT INTO Especialidade (Descricao) VALUES ('Ortopedia')
INSERT INTO Especialidade (Descricao) VALUES ('Pediatria')
INSERT INTO Especialidade (Descricao) VALUES ('Psiquiatria')

go

INSERT INTO Profissional (Nome, NumeroConselho, Identificador_Especialidade) VALUES ('Dr. João Silva', 'CRM12345', 1)
INSERT INTO Profissional (Nome, NumeroConselho, Identificador_Especialidade) VALUES ('Dr. Carlos Pereira', 'CRM67890', 2)
INSERT INTO Profissional (Nome, NumeroConselho, Identificador_Especialidade) VALUES ('Dr. Maria Santos', 'CRM11111', 3)
INSERT INTO Profissional (Nome, NumeroConselho, Identificador_Especialidade) VALUES ('Dr. Ana Oliveira', 'CRM22222', 5)
INSERT INTO Profissional (Nome, NumeroConselho, Identificador_Especialidade) VALUES ('Dr. Lucas Costa', 'CRM33333', 6)
INSERT INTO Profissional (Nome, NumeroConselho, Identificador_Especialidade) VALUES ('Dr. Camila Freitas', 'CRM44444', 7)
INSERT INTO Profissional (Nome, NumeroConselho, Identificador_Especialidade) VALUES ('Dr. Mateus Rocha', 'CRM55555', 8)
INSERT INTO Profissional (Nome, NumeroConselho, Identificador_Especialidade) VALUES ('Dr. Juliana Lima', 'CRM66666', 9)
INSERT INTO Profissional (Nome, NumeroConselho, Identificador_Especialidade) VALUES ('Dr. Bruno Alves', 'CRM77777', 10)

go 

INSERT INTO Profissional (Nome, NumeroConselho, Identificador_Especialidade) VALUES ('Enf. Paula Fernandes', 'COREN1234', 4)
INSERT INTO Profissional (Nome, NumeroConselho, Identificador_Especialidade) VALUES ('Enf. Beatriz Sousa', 'COREN5678', 4)
INSERT INTO Profissional (Nome, NumeroConselho, Identificador_Especialidade) VALUES ('Enf. Renata Moraes', 'COREN9012', 4)


go

INSERT INTO SituacaoConsulta (Descricao) VALUES ('Agendada')
INSERT INTO SituacaoConsulta (Descricao) VALUES ('Cancelada')
INSERT INTO SituacaoConsulta (Descricao) VALUES ('Finalizada')

go



INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (1234678901, 'João Silva', '1985-06-15', 1, 2)
INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (2346789012, 'Maria Oliveira', '1990-04-22', 2, 3)
INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (3457890123, 'Lucas Almeida', '1978-11-30', 1, 4)
INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (4568901234, 'Ana Souza', '2002-01-09', 2, 2)
INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (5678012345, 'Rafael Costa', '1965-10-05', 1, 3)
INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (6789123456, 'Fernanda Pereira', '1982-02-18', 2, 1)
INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (7890234567, 'Carlos Santos', '1994-07-11', 1, 5)
INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (8901345678, 'Beatriz Rodrigues', '1975-08-25', 2, 6)
INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (9012456789, 'Gabriel Lima', '1988-09-19', 1, 3)
INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (1234678910, 'Juliana Moura', '1997-05-13', 2, 4)

INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (1234678901, 'João Silva', '1985-06-15', 1, 2)
INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (2346789012, 'Maria Oliveira', '1990-04-22', 2, 3)
INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (3457890123, 'Lucas Almeida', '1978-11-30', 1, 4)
INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (4568901234, 'Ana Souza', '2002-01-09', 2, 2)
INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (5678012345, 'Rafael Costa', '1965-10-05', 1, 3)
INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (6789123456, 'Fernanda Pereira', '1982-02-18', 2, 1)
INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (7890234567, 'Carlos Santos', '1994-07-11', 1, 5)
INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (8901345678, 'Beatriz Rodrigues', '1975-08-25', 2, 6)
INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (9012456789, 'Gabriel Lima', '1988-09-19', 1, 3)
INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (1234678910, 'Juliana Moura', '1997-05-13', 2, 4)

INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (120003478901, 'João FFSilva', '1985-06-15', 1, 2)
INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (230004689012, 'MariaFF Oliveira', '1990-04-22', 2, 3)
INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (34005790123, 'LucasF Almeida', '1978-11-30', 1, 4)
INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (45006901234, 'Ana SoFuza', '2002-01-09', 2, 2)
INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (56781230045, 'RafaelF Costa', '1965-10-05', 1, 3)
INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (67892340056, 'FernanFda Pereira', '1982-02-18', 2, 1)
INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (78903400567, 'Carlos FSantos', '1994-07-11', 1, 5)
INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (89014005678, 'Beatriz RFodrigues', '1975-08-25', 2, 6)
INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (90120056789, 'Gabriel LiFma', '1988-09-19', 1, 3)
INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio) VALUES (12347008910, 'Juliana Moura', '1997-05-13', 2, 4)



-- Dia 1
INSERT INTO Consulta (Identificador_Profissional, Identificador_Paciente, Identificador_TipoConsulta, DataHora, Identificador_Situacao) VALUES (1, 2, 1, '2023-08-01 08:00:00', 1)
INSERT INTO Consulta (Identificador_Profissional, Identificador_Paciente, Identificador_TipoConsulta, DataHora, Identificador_Situacao) VALUES (2, 4, 2, '2023-08-01 08:35:00', 1)
INSERT INTO Consulta (Identificador_Profissional, Identificador_Paciente, Identificador_TipoConsulta, DataHora, Identificador_Situacao) VALUES (3, 6, 1, '2023-08-01 09:10:00', 3)

-- Dia 2

INSERT INTO Consulta (Identificador_Profissional, Identificador_Paciente, Identificador_TipoConsulta, DataHora, Identificador_Situacao) VALUES (1, 8, 1, '2023-08-02 08:00:00', 1)
INSERT INTO Consulta (Identificador_Profissional, Identificador_Paciente, Identificador_TipoConsulta, DataHora, Identificador_Situacao) VALUES (2, 10, 2, '2023-08-02 08:35:00', 4)


INSERT INTO Consulta (Identificador_Profissional, Identificador_Paciente, Identificador_TipoConsulta, DataHora, Identificador_Situacao) VALUES (4, 4, 1, '2023-08-03 08:00:00', 1)


INSERT INTO Consulta (Identificador_Profissional, Identificador_Paciente, Identificador_TipoConsulta, DataHora, Identificador_Situacao) VALUES (4, 4, 1, '2023-08-10 08:00:00', 1)


INSERT INTO TipoServico (DescricaoResumida, Descricao) VALUES ('Vacina COVID-19', 'Aplicação da vacina contra COVID-19')
INSERT INTO TipoServico (DescricaoResumida, Descricao) VALUES ('Vacina Gripe', 'Aplicação da vacina contra gripe sazonal')
INSERT INTO TipoServico (DescricaoResumida, Descricao) VALUES ('Curativo Simples', 'Realização de curativo em feridas superficiais')
INSERT INTO TipoServico (DescricaoResumida, Descricao) VALUES ('Curativo Avançado', 'Realização de curativo em feridas profundas ou infectadas')
INSERT INTO TipoServico (DescricaoResumida, Descricao) VALUES ('Coquetel de Medicamentos', 'Administração de coquetel de medicamentos conforme prescrição médica')
INSERT INTO TipoServico (DescricaoResumida, Descricao) VALUES ('Vacina Tetano', 'Aplicação da vacina contra tétano')
INSERT INTO TipoServico (DescricaoResumida, Descricao) VALUES ('Tratamento Queimadura', 'Tratamento especializado para queimaduras de diferentes graus')



INSERT INTO Servico (Identificador_Profissional, Identificador_TipoServico, Identificador_Paciente, DataHora) VALUES (10, 1, 2, '2023-08-05 09:00')
INSERT INTO Servico (Identificador_Profissional, Identificador_TipoServico, Identificador_Paciente, DataHora) VALUES (11, 2, 4, '2023-08-05 09:30')
INSERT INTO Servico (Identificador_Profissional, Identificador_TipoServico, Identificador_Paciente, DataHora) VALUES (10, 3, 6, '2023-08-05 10:00')
INSERT INTO Servico (Identificador_Profissional, Identificador_TipoServico, Identificador_Paciente, DataHora) VALUES (12, 4, 8, '2023-08-05 10:30')
INSERT INTO Servico (Identificador_Profissional, Identificador_TipoServico, Identificador_Paciente, DataHora) VALUES (11, 5, 10, '2023-08-05 11:00')
INSERT INTO Servico (Identificador_Profissional, Identificador_TipoServico, Identificador_Paciente, DataHora) VALUES (12, 6, 19, '2023-08-06 09:00')
INSERT INTO Servico (Identificador_Profissional, Identificador_TipoServico, Identificador_Paciente, DataHora) VALUES (10, 7, 10, '2023-08-10 09:30')

INSERT INTO Servico (Identificador_Profissional, Identificador_TipoServico, Identificador_Paciente, DataHora) VALUES (10, 3, 10, '2023-9-05 10:00')
INSERT INTO Servico (Identificador_Profissional, Identificador_TipoServico, Identificador_Paciente, DataHora) VALUES (10, 3, 19, '2023-10-05 10:00')
INSERT INTO Servico (Identificador_Profissional, Identificador_TipoServico, Identificador_Paciente, DataHora) VALUES (10, 3, 2, '2023-11-05 10:00')
INSERT INTO Servico (Identificador_Profissional, Identificador_TipoServico, Identificador_Paciente, DataHora) VALUES (10, 3, 4, '2023-12-05 10:00')



-- Consulta para o Paciente 31 com o Médico 1 (Clínico Geral)
INSERT INTO Consulta (Identificador_Profissional, Identificador_Paciente, Identificador_TipoConsulta, DataHora, Identificador_Situacao) VALUES (1, 31, 2, '2023-08-10 09:00', 1)

-- Retorno com o mesmo médico
INSERT INTO Consulta (Identificador_Profissional, Identificador_Paciente, Identificador_TipoConsulta, DataHora, Identificador_Situacao) VALUES (1, 31, 2, '2023-09-05 09:00', 1)

-- Consulta para o Paciente 32 com o Médico 4 (Especialidade 5)
INSERT INTO Consulta (Identificador_Profissional, Identificador_Paciente, Identificador_TipoConsulta, DataHora, Identificador_Situacao) VALUES (4, 32, 1, '2023-08-20 10:30', 1)

-- Consulta para o Paciente 33 com o Médico 2 (Especialidade 2)
INSERT INTO Consulta (Identificador_Profissional, Identificador_Paciente, Identificador_TipoConsulta, DataHora, Identificador_Situacao) VALUES (2, 33, 2, '2023-10-15 11:00', 1)

-- Consulta para o Paciente 34 com o Médico 5 (Especialidade 6)
INSERT INTO Consulta (Identificador_Profissional, Identificador_Paciente, Identificador_TipoConsulta, DataHora, Identificador_Situacao) VALUES (5, 34, 1, '2023-09-10 2:00pm', 1)

-- Retorno com o mesmo médico
INSERT INTO Consulta (Identificador_Profissional, Identificador_Paciente, Identificador_TipoConsulta, DataHora, Identificador_Situacao) VALUES (5, 34, 1, '2023-10-08 2:00pm', 1)

-- Consulta para o Paciente 35 com o Médico 3 (Especialidade 3)
INSERT INTO Consulta (Identificador_Profissional, Identificador_Paciente, Identificador_TipoConsulta, DataHora, Identificador_Situacao) VALUES (3, 35, 2, '2023-11-23 4:00pm', 1)

-- Consulta para o Paciente 36 com o Médico 6 (Especialidade 7)
INSERT INTO Consulta (Identificador_Profissional, Identificador_Paciente, Identificador_TipoConsulta, DataHora, Identificador_Situacao) VALUES (6, 36, 2, '2023-12-05 09:30', 1)

-- Consulta para o Paciente 37 com o Médico 7 (Especialidade 8)
INSERT INTO Consulta (Identificador_Profissional, Identificador_Paciente, Identificador_TipoConsulta, DataHora, Identificador_Situacao) VALUES (7, 37, 1, '2023-11-07 11:30', 1)

-- Consulta para o Paciente 38 com o Médico 8 (Especialidade 9)
INSERT INTO Consulta (Identificador_Profissional, Identificador_Paciente, Identificador_TipoConsulta, DataHora, Identificador_Situacao) VALUES (8, 38, 2, '2023-09-29 15:00', 1)

-- Consulta para o Paciente 39 com o Médico 9 (Especialidade 10)
INSERT INTO Consulta (Identificador_Profissional, Identificador_Paciente, Identificador_TipoConsulta, DataHora, Identificador_Situacao) VALUES (9, 39, 1, '2023-10-20 10:00', 1)

-- Consulta para o Paciente 40 com o Médico 3 (Especialidade 3)
INSERT INTO Consulta (Identificador_Profissional, Identificador_Paciente, Identificador_TipoConsulta, DataHora, Identificador_Situacao) VALUES (3, 40, 2, '2023-12-15 13:00', 1)

