CREATE PROCEDURE IncluiPaciente
	@cpf bigint,
	@nome varchar(200),
	@datanascimento date ,
	@identificador_TipoConsulta int null,
	@identificador_convenio int null
as

begin

    -- regra de negócio
    -- testar se o código de consulta informado existe
    if (select 1 from tipoconsulta
    where identificador = @identificador_TipoConsulta) = 0
	begin
		print 'tipo de consulta não existe'
		return  -- sai da stored procedure
	end

    -- regra de negócio
    -- testar se o cpf já existe
    if (select 1 from paciente
    where cpf = @cpf)<> 0
	begin
		print 'Paciente já cadastrado'
		return  -- sai da stored procedure
	end

	-- Inserção do paciente
	INSERT INTO Paciente (CPF, Nome, DataNascimento, Identificador_TipoConsulta, Identificador_Convenio)
	VALUES (@CPF, @Nome, @DataNascimento, @Identificador_TipoConsulta, @Identificador_Convenio);

	PRINT 'Paciente adicionado com sucesso!';

END

EXEC incluiPaciente
    @CPF = 12345678901,
    @Nome = 'João Silva',
    @DataNascimento = '1980-05-15',
    @Identificador_TipoConsulta = 1,
    @Identificador_Convenio = 2;