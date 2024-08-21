# Loja de Games

## Problematização:
        Uma loja de jogos já possui um banco de dados apropriado para armazenar todas as informações necessárias em relação as suas vendas e clientes, dentre outros dados, porém, com o tempo, surgiu a necessidade de implementar novas regras de negócio para um serviço mais personalizado.
        Desta maneira, o proprietário te contratou para resolver esse problema e criar funções novas para gerir essas regras de negócio.


## Regras de Negócio:
	- Os jogos com Classificação Indicativa +18 só podem ser vendidos à clientes com idade suficiente;
	- Compras feitas no pix ou dinheiro possuem 5% de desconto;
	- Na compra de qualquer console, o cliente recebe um jogo aleatório de até 100 reais gratuitamente.


## Estrutura
DB: LojaJogos

jogos
   id jogo - pk - int - ai
   nome - not null - varchar(50)
   desenvolvedora - varchar(50)
   preço - not null - float
   classificacaoIndicativa - not null - int
   id_console - fk - not null - int

console
   id console - pk - int - ai
   nome - not null - varchar(50)
   desenvolvedora - varchar(50)
   preço - not null - float

clientes
    id cliente - pk - int - ai
    nome - not null - varchar(50)
    cpf - not null - int
    telefone - not null - varchar(15)
    email - varchar(50)
    dt nascimento - not null - date

vendedores
    id vendedor - pk - int - ai
    nome - not null - varchar(50)
    cpf - not null - int
    telefone - not null - varchar(15)
    dt nascimento - not null - date

formaPagamento
    id formapagamento - pk - int - ai
    descrição - not null - varchar(50)

venda
    id venda - pk - int - ai
    id cliente - fk - not null - int
    id vendedor - fk - not null - int
    dt venda - not null - datetime
    valor total - not null - float
    id formapagamento - fk - not null - int

venda has jogo
    id jogo - fk - int
    id venda  fk - int

venda has console
   id console  fk - int
   id venda  fk - int








jogos
id - pk, not null, auto increment - int
nome - not null - varchar(50)
desenvolvedora - varchar(50)
classificacaoIndicativa - not null - int
id_consoles - fk, not null - int 
valor - not null - float

consoles
id - pk, not null, auto increment - int
nome - not null - varchar(50)
desenvolvedora - varchar(50)
valor - not null - float

vendas_has_jogos
id_jogos - fk, not null - int
id vendas - fk, not null - int

vendas_has_consoles
id_consoles - fk, not null - int
id_vendas - fk, not null - int

Formas_pagamento
id
formaPagamento

vendas
id - pk, not null, auto increment - int
idCliente - fk, not null - int
idVendedor - fk, not null - int
idFormaPagamento - fk, not null - int
valor - not null - float
dtVenda - not null - datetime

clientes
id - pk, not null, auto increment - int
nome - not null - varchar(100)
cpf - not null - int
telefone - not null - varchar(15)
email - varchar(50)
dtNascimento - not null - date

vendedores
id - pk, not null, auto increment - int
nome - not null - varchar(100)
cpf - not null - int
dtNascimento - not null - date
telefone - not null - varchar(15)

