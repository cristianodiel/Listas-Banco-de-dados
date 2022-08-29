create database lista002;
use lista002;
create table alunos(
codigo int,
nome varchar(50),
telefone varchar(50),
cidade varchar(50)
);
desc alunos;
create table alunos2(
codigo int,
nome varchar(200),
telefone varchar(50),
cidade varchar(100)
);
create table funcionarios(
nome varchar(100),
endereco varchar(200),
telefone varchar(16),
cidade varchar(50),
estado varchar(100),
cep varchar(8),
rg varchar(20),
cpf varchar(11),
salario decimal(5,2)
);
create table fornecedores(
nome varchar(100),
endereco varchar(200),
telefone varchar(16),
cidade varchar(50),
estado varchar(100),
cep varchar(8),
cnpj varchar(14),
email varchar(50)
);
create table livros(
codigo int primary key,
nome varchar(30),
categoria varchar(20),
resumo varchar(1024),
precocusto decimal (4,2),
precovenda decimal (4,2)
);
desc funcionarios;
desc fornecedores;
desc livros;
create table estoque(
codigo int primary key,
nomedoproduto varchar(30),
categoria varchar(20),
quantidade int,
fornecedor varchar (30)
);
create table notas(
codigo int primary key,
nomedoaluno varchar(30),
bimestre int
);
-- Ex 11
create table caixa(
codigo int primary key,
data_ date,
descricao varchar(30),
debito decimal(6,2),
credito decimal (6,2)
);
create table contasAPagar(
codigo int primary key not null,
data_conta date,
descricao varchar(30),
valor decimal(6,2),
data_pagamento date
);
-- Ex 12
create table contasAReceber(
codigo int primary key not null,
data_conta date,
descricao varchar(30),
valor decimal(6,2),
data_recebimento date
);
-- Ex 13
create table filmes (
codigo int primary key not null,
nome varchar(20) not null,
sinopse varchar(512),
categoria varchar(20),
diretor varchar(30)
);
-- Ex 14
create table CDs (
codigo int primary key not null,
nome varchar(20) not null,
cantor varchar(30),
ano int,
quantidadedemusicas int
);
-- Ex 15
drop table alunos2;
-- Ex 16
desc alunos2;
drop table livros;
drop table contasApagar;
drop table contasAReceber;
drop table filmes;
-- Ex 21
desc alunos;
desc CDs;
desc filmes;
desc funcionarios;
desc alunos2;
-- Ex 22
alter table alunos rename to super_alunos;
desc alunos;
desc super_alunos;
-- Ex 24
alter table estoque rename to produtos;
alter table notas rename to aprovados;
alter table aprovados rename to notas;
drop table dinheiro; -- erro, a tabela não existe
-- Ex 28
drop table notas;
alter table super_alunos rename to alunos;
alter table alunos rename to estudantes;
alter table estudantes rename to super_estudantes;
desc super_estudantes;
drop table super_estudantes;
desc super_estudantes;
desc alunos;
-- Ex 35
alter table alunos add estado varchar(20); -- erro, já foi excluida
-- Ex 36
create table caixa(
codigo int primary key,
data_ date,
descricao varchar(30),
debito decimal(6,2),
credito decimal (6,2)
);-- erro ja existe a tabela com esse nome
-- Ex 37
alter table caixa add observacao varchar(30); 
-- Ex 38
alter table alunos add cpf varchar(11); -- erro a tabela alunos foi excluida
-- Ex 39
desc caixa;
-- Ex 40
alter table caixa add saldo decimal(6,2);

