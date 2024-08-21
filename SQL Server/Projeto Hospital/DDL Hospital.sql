create database HospitalSaude;
go
use HospitalSaude;
go

CREATE TABLE TipoConsulta (
    Identificador INT IDENTITY(1,1) PRIMARY KEY,
    Descricao VARCHAR(100) NOT NULL
);

CREATE TABLE Convenio (
    Identificador INT IDENTITY(1,1) PRIMARY KEY,
    Descricao VARCHAR(100) NOT NULL
);

CREATE TABLE Paciente (
    Identificador INT IDENTITY(1,1) PRIMARY KEY,
    CPF bigint UNIQUE NOT NULL,
    Nome VARCHAR(200) NOT NULL,
    DataNascimento DATE NOT NULL,
    Identificador_TipoConsulta INT,
    Identificador_Convenio INT,
    FOREIGN KEY (Identificador_TipoConsulta) REFERENCES TipoConsulta(Identificador),
    FOREIGN KEY (Identificador_Convenio) REFERENCES Convenio(Identificador)
);

CREATE TABLE Especialidade (
    Identificador INT IDENTITY(1,1) PRIMARY KEY,
    Descricao VARCHAR(200) NOT NULL
);

CREATE TABLE Profissional (
    Identificador INT IDENTITY(1,1) PRIMARY KEY,
    Nome VARCHAR(200) NOT NULL,
    NumeroConselho VARCHAR(50) NOT NULL,
    Identificador_Especialidade INT,
    FOREIGN KEY (Identificador_Especialidade) REFERENCES Especialidade(Identificador)
);

CREATE TABLE SituacaoConsulta (
    Identificador INT IDENTITY(1,1) PRIMARY KEY,
    Descricao VARCHAR(200) NOT NULL
);

CREATE TABLE Consulta (
    Identificador INT IDENTITY(1,1) PRIMARY KEY,
    Identificador_Profissional INT NOT NULL,
    Identificador_Paciente INT NOT NULL,
    Identificador_TipoConsulta INT NOT NULL,
    DataHora DATETIME NOT NULL,
	Identificador_Situacao INT NOT NULL,
    FOREIGN KEY (Identificador_Profissional) REFERENCES Profissional(Identificador),
    FOREIGN KEY (Identificador_Paciente) REFERENCES Paciente(Identificador),
    FOREIGN KEY (Identificador_TipoConsulta) REFERENCES TipoConsulta(Identificador),
	FOREIGN KEY (Identificador_Situacao) REFERENCES SituacaoConsulta(Identificador)
);

CREATE TABLE TipoServico (
    Identificador INT IDENTITY(1,1) PRIMARY KEY,
    DescricaoResumida VARCHAR(255) NOT NULL,
    Descricao TEXT NOT NULL
);

CREATE TABLE Servico (
    Identificador INT IDENTITY(1,1) PRIMARY KEY,
    Identificador_Profissional INT NOT NULL,
    Identificador_TipoServico INT NOT NULL,
    Identificador_Paciente INT NOT NULL,
    DataHora DATETIME NOT NULL,
    FOREIGN KEY (Identificador_Profissional) REFERENCES Profissional(Identificador),
    FOREIGN KEY (Identificador_TipoServico) REFERENCES TipoServico(Identificador),
    FOREIGN KEY (Identificador_Paciente) REFERENCES Paciente(Identificador)
);