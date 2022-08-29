CREATE DATABASE clinica;
USE clinica;

create table medicos(
	crm varchar(15) primary key,
	nome varchar(40) not null,
	idade int check(idade>23),
	especialidade char(20) not null default 'ortopedia',
	cpf varchar(15) unique not null,
	data_de_emissao date
    );
    desc medicos;
    
create table sala(
	id_sala int primary key,
    numero_sala int unique not null check(numero_sala>1 and numero_sala<50),
	andar int unique not null check(andar<12),
    crm_medico varchar(15),
    foreign key (crm_medico) references medicos(crm)
    );

create table pacientes(
	paciente_id int primary key,
	rg varchar(15) unique not null,
	nome varchar(40) not null,
    data_nascimento date,
    cidade char(30) default 'Itabuna',
    doenca varchar(40) not null,
    plano_saude varchar(40) not null default 'SUS'
    );
    
create table funcionario(
	matricula varchar(15) primary key,
    nome varchar(40) not null,
    data_nascimento date not null,
    data_admissao date not null,
    cargo varchar(40) not null default "Assistente Medico",
    salario float not null default '510.00'
    );
    
create table consultas(
codigo_consulta int primary key,
data_horario datetime,
medico_crm varchar(15),
paciente_id int,
foreign key (medico_crm) references medicos(crm),
foreign key (paciente_id) references pacientes(paciente_id)
);
drop database clinica;

    
