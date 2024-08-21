/*Para criar uma stored procedure que registra uma consulta 
garantindo que o profissional n�o esteja em outra consulta no mesmo hor�rio, e que o paciente esteja 
cadastrado e seja maior de idade, seguiremos estes passos:

1. Verifica��o da disponibilidade do profissional: 
A procedure precisa checar se existe algum registro de consulta para o profissional na data e hora especificadas.
2. Verifica��o do cadastro do paciente: 
Verificar se o paciente est� devidamente cadastrado no sistema.
3. Verifica��o da idade do paciente: 
Confirmar se o paciente � maior de idade, considerando a maioridade legal como 18 anos.
*/

CREATE  PROCEDURE RegistrarConsulta
    @Identificador_Profissional INT,
    @Identificador_Paciente INT,
    @Identificador_TipoConsulta INT,
    @DataHora DATETIME
AS
BEGIN

declare @erro int

    -- Verificar se o paciente est� cadastrado e � maior de idade
    DECLARE @DataNascimento DATE
    SELECT @DataNascimento = DataNascimento 
    FROM Paciente
    WHERE Identificador = @Identificador_Paciente

    IF @DataNascimento IS NULL
    BEGIN
        RAISERROR('Paciente n�o cadastrado.', 16, 1)
        RETURN
    END

    IF DATEDIFF(YEAR, @DataNascimento, GETDATE()) < 18
    BEGIN
        RAISERROR('Paciente n�o � maior de idade.', 16, 1)
        RETURN
    END

    -- Verificar se o profissional j� tem consulta marcada no mesmo hor�rio
    IF EXISTS (
        SELECT 1 
        FROM Consulta
        WHERE Identificador_Profissional = @Identificador_Profissional 
            AND DataHora = @DataHora
    )
    BEGIN
        RAISERROR('Profissional j� possui consulta agendada neste hor�rio.', 16, 1)
        RETURN
    END

    -- Inserir a nova consulta
    INSERT INTO Consulta (Identificador_Profissional, Identificador_Paciente, Identificador_TipoConsulta, DataHora, Identificador_Situacao )
    VALUES (@Identificador_Profissional, @Identificador_Paciente, @Identificador_TipoConsulta, @DataHora, 1 ) --agendada

	select @erro = @@ERROR 

	if @erro <>0 
		begin
			RAISERROR('Erro na inclus�o da consulta', 16, 1)
			RETURN
		end
	else
		begin
			PRINT 'Consulta registrada com sucesso!'
		end
END


exec RegistrarConsulta 2, 2, 1, '2023-1-1 14:01'