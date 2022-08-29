create database controle_de_livros;
use controle_de_livros;

create table editora (
id_editora int primary key auto_increment,
nome varchar(40) 
);

create table livro (
id_livro int primary key auto_increment,
nome varchar(40),
editora_fk int not null,
foreign key(editora_fk) references editora(id_editora)
);

create table autor (
id_autor int primary key auto_increment,
primeironome varchar(40),
sobrenome varchar(40)
);

create table livro_autor (
id_livro int not null,
id_autor int not null,
primary key(id_livro, id_autor),
foreign key (id_livro) references livro(id_livro),
foreign key (id_autor) references autor(id_autor)
);

create table categoria (
id_categoria int primary key auto_increment,
nome varchar(40) 
);
create table livro_categoria (
id_livro int not null,
id_categoria int not null,
primary key(id_livro, id_categoria),
foreign key (id_livro) references livro(id_livro),
foreign key (id_categoria) references categoria(id_categoria)
);

-- comandos dml
-- inserir dois elementos por tabela
insert into editora ()
values (1, "Editora1");
select * from editora;
insert into editora ()
values (2, "Editora2");
select * from editora;
insert into livro ()
values 	(1, "Livro1", 1),(2, "Livro2", 1);
select * from livro;
insert into autor ()
values 	(1, "Fulano", "detal"),
(2, "Ciclano", "da Silva");
select * from autor;
insert into categoria ()
values 	
(1, "Ficcao"),
(2, "Suspense");
select * from categoria;
insert into livro_autor
values turma_fk
(1,1),
(2,2);
insert into livro_categoria
values 
(1,2),
(2,1);


-- alterar um elemento por tabela

update editora
set nome = "Editora3"
where id_editora=2;
select * from editora;

update livro
set nome ="novo nome para o livro 1"
where id_livro=1;

update autor
set primeironome= "Beltrano"
where id_autor=1;
select * from autor;

select * from livro_autor;
update livro_autor
set id_autor = 1
where id_livro = 2;
select * from livro_autor;

select * from livro_categoria;
update livro_categoria
set id_categoria = 1
where id_livro = 1;

-- excluir um elemento por tabela
delete from autor
where id_autor=2;
select * from autor;

delete from categoria
where id_categoria=2;
select * from categoria;

delete from editora
where id_editora=2;
select * from editora;

delete from livro
where id_livro=2; -- nao é possivel deletar, pois o id_livro=2 esta sendo utilizado nas tabelas livro_categoria e livro_autor.
-- antes de excluir aqui, é necessario fazer as exclusões nestas duas tabelas primeiro. 
select * from livro;

select * from livro_categoria;
delete from livro_categoria
where id_livro=2;

select * from livro_autor;
delete from livro_autor
where id_livro=2;

delete from livro
where id_livro=2; -- agora sim é possivel deletar, pois o id_livro=2 nao esta mais sendo utilizado.
select * from livro;
