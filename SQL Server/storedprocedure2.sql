/*Para criar uma stored procedure que registra uma consulta 
garantindo que o profissional não esteja em outra consulta no mesmo horário, e que o paciente esteja 
cadastrado e seja maior de idade, seguiremos estes passos:

1. Verificação da disponibilidade do profissional: 
A procedure precisa checar se existe algum registro de consulta para o profissional na data e hora especificadas.
2. Verificação do cadastro do paciente: 
Verificar se o paciente está devidamente cadastrado no sistema.
3. Verificação da idade do paciente: 
Confirmar se o paciente é maior de idade, considerando a maioridade legal como 18 anos.
*/

CREATE  PROCEDURE RegistrarConsulta
    @Identificador_Profissional INT,
    @Identificador_Paciente INT,
    @Identificador_TipoConsulta INT,
    @DataHora DATETIME
AS
BEGIN

declare @erro int

    -- Verificar se o paciente está cadastrado e é maior de idade
    DECLARE @DataNascimento DATE
    SELECT @DataNascimento = DataNascimento 
    FROM Paciente
    WHERE Identificador = @Identificador_Paciente

    IF @DataNascimento IS NULL
    BEGIN
        RAISERROR('Paciente não cadastrado.', 16, 1)
        RETURN
    END

    IF DATEDIFF(YEAR, @DataNascimento, GETDATE()) < 18
    BEGIN
        RAISERROR('Paciente não é maior de idade.', 16, 1)
        RETURN
    END

    -- Verificar se o profissional já tem consulta marcada no mesmo horário
    IF EXISTS (
        SELECT 1 
        FROM Consulta
        WHERE Identificador_Profissional = @Identificador_Profissional 
            AND DataHora = @DataHora
    )
    BEGIN
        RAISERROR('Profissional já possui consulta agendada neste horário.', 16, 1)
        RETURN
    END

    -- Inserir a nova consulta
    INSERT INTO Consulta (Identificador_Profissional, Identificador_Paciente, Identificador_TipoConsulta, DataHora, Identificador_Situacao )
    VALUES (@Identificador_Profissional, @Identificador_Paciente, @Identificador_TipoConsulta, @DataHora, 1 ) --agendada

	select @erro = @@ERROR 

	if @erro <>0 
		begin
			RAISERROR('Erro na inclusão da consulta', 16, 1)
			RETURN
		end
	else
		begin
			PRINT 'Consulta registrada com sucesso!'
		end
END


exec RegistrarConsulta 2, 2, 1, '2023-1-1 14:01'