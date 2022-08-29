create database escola;
use escola;

create table professor(
id_professor int primary key,
nome varchar(40) not null,
sobrenome varchar(40) not null
);
create table turma(
id_turma int primary key,
sala varchar(30) 
);
create table aluno(
id_aluno int primary key,
nome varchar(40) not null,
sobrenome varchar(40) not null,
turma_fk int not null,
foreign key (turma_fk) references turma(id_turma)
);
create table aula(
id_aula int primary key,
materia varchar(40) not null,
professor_fk int not null,
foreign key (professor_fk) references professor(id_professor)
);
create table aluno_aula(
id_aluno int not null unique,
id_aula int not null unique,
primary key (id_aluno,id_aula),
foreign key (id_aluno) references aluno(id_aluno),
foreign key (id_aula) references aula(id_aula)
);
create table turma_professor(
id_turma int not null unique,
id_professor int not null unique,
primary key (id_turma,id_professor),
foreign key (id_turma) references turma(id_turma),
foreign key (id_professor) references professor(id_professor)
);

-- 2 insert por Tabela
insert into professor()
values (1,'fulano', 'detal');
select * from professor;
insert into professor()
values (2,'nome2', 'sobrenome2');

insert into turma()
values 
(1, 31),
(2, 32);

insert into aluno()
values 
(1, 'fulano', 'da Silva',1),
(2, 'beltrano', 'de Oliveira',2);

insert into aula()
values 
(1,'algoritmos',1),
(2,'banco de dados',2);

insert into aluno_aula()
values 
(1,1),
(2,2);

insert into turma_professor()
values 
(1,1),
(2,2);

-- 1 update por tabela
select * from professor; 
update professor
set nome='nomecriativo1'
where id_professor=1;

select * from turma;

select * from aluno; 
update aluno
set sobrenome='Sauro'
where id_aluno=2;

 
select * from aula; 
select * from aluno_aula; 
select * from turma_professor; 


