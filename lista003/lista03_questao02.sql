create database eleicao;
use eleicao;
create table cargo(
	codigo_cargo int primary key,
	nome_cargo varchar(30) unique not null check(nome_cargo <> "Prefeito" and nome_cargo <> "Vereador"),
	salario float not null default '17000.00',
	numero_vagas int unique not null
);

create table partido(
	codigo_partido int primary key,
	sigla char(5) unique not null,
	nome varchar(40) unique not null,
	numero int unique not null
);

create table candidato(
	numero_candidato int primary key,
	nome varchar(40) unique not null,
	codigo_candidato int not null,
	codigo_partido int not null,
    codigo_cargo int not null unique,
    foreign key(numero_candidato) references partido(codigo_partido),
    foreign key(codigo_cargo) references cargo(codigo_cargo)
);


create table eleitor(
	titulo_eleitor varchar(30) primary key,
	zona_eleitoral char(5) not null,
	sessao_eleitoral char(5) not null,
	nome varchar(40) not null
);

create table voto(
	voto_id int primary key,
	titulo_eleitor varchar(30) unique not null,
	numero_candidato int not null,
	foreign key(numero_candidato) references candidato(numero_candidato)
);
