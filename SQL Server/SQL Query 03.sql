--update b set b.idCor = a.identificador from cores a inner join produto b on a.descricao = b.color
--select a.name as Nome,b.descricao as Cor from produto a inner join cores b on a.idcor = b.identificador

CREATE TABLE cidade (
    id int identity(1,1) primary key,
    nome varchar(200),
    estado char(2)
);

CREATE TABLE logradouro (
    id int identity(1,1) primary key,
    descricao varchar(200),
    cep varchar(8),
    id_cidade int,
	bairro varchar(200)
	foreign key (id_cidade) references cidade(id)
);

insert into cidade (nome,estado)
select distinct cidade,estado from cep

insert into logradouro (descricao,cep)
select distinct rua,cep from cep

select * from cidade
select * from logradouro
select * from cep

--delete from cidade where estado is null

update b set b.id_cidade = a.id from cidade a inner join logradouro b on a.descricao = b.color
