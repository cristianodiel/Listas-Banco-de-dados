create database teste;
-- comentario: menos menos espaço
use teste;

create table nome(
nome varchar(50)
);
create table nome2(
nom1 varchar(50)
);
create table pessoa(
	nome varchar(50),
    idade int,
    cpf varchar(11)
);
describe pessoa;
alter table pessoa add rg varchar(20);
alter table pessoa change cpf11 cpf varchar(11);
