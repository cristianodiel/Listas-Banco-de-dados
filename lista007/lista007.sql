-- 1
select livro.titulo, editora.nome, estilo.nome, autor.nome from livro
join editora on editora.id_editora=livro.id_editora
join livro_estilo on livro_estilo.id_livro=livro.id_livro
join estilo on estilo.id_estilo=livro_estilo.id_estilo
join livro_autor on livro_autor.id_livro=livro.id_livro
join autor on autor.id_autor=livro_autor.id_autor;

-- 2
select livro.titulo, editora.nome from livro
join editora on editora.telefone=123345;

-- 3
select livro.titulo, autor.nome from livro
join autor where autor.idade=35;

-- 4
select livro.titulo, autor.nome, editora.nome from livro
join editora on livro.id_editora=editora.id_editora
join livro_autor on livro_autor.id_livro=livro.id_livro
join autor on autor.id_autor=livro_autor.id_autor
where autor.nome = 'Dan Brown';
-- 5
select livro.titulo, autor.nome, editora.nome from livro
join editora on livro.id_editora=editora.id_editora
join livro_autor on livro_autor.id_livro=livro.id_livro
join autor on autor.id_autor=livro_autor.id_autor
where autor.nome = 'Dan Brown' and autor.idade='35';

-- 6
select livro.titulo, autor.nome, editora.nome from livro
join editora on livro.id_editora=editora.id_editora
join livro_autor on livro_autor.id_livro=livro.id_livro
join autor on autor.id_autor=livro_autor.id_autor
where autor.nome='Dan Brown' and editora.telefone='123345';

-- 7
select livro.titulo, estilo.nome from livro
join livro_estilo on livro_estilo.id_livro=livro.id_livro
join estilo on livro_estilo.id_estilo=estilo.id_estilo
where estilo.nome='Romance';

-- 8
select livro.titulo, estilo.nome from livro
join livro_estilo on livro_estilo.id_livro=livro.id_livro
join estilo on livro_estilo.id_estilo=estilo.id_estilo
join editora on editora.id_editora=livro.id_editora
where editora.nome='Globo';

-- 9
select max(livro.titulo) from livro;

-- 10
select min(livro.titulo) from livro;

-- 11
select avg(livro.valor) from livro;

-- 12
select avg(autor.valor_hr) from autor;

-- 13
select count(id_livro) from livro;

-- 14
select count(id_livro) from livro where livro.id_editora=2;

-- 15
select count(livro.id_livro) from livro
join livro_estilo on livro.id_livro=livro_estilo.id_livro
join estilo on estilo.id_estilo=livro_estilo.id_estilo
where estilo.id_estilo=5;

-- 16
select livro.titulo, editora.nome from livro
join editora on editora.id_editora=livro.id_editora;

-- 17
select livro.titulo, editora.nome from livro
join editora on editora.id_editora=livro.id_editora
where editora.nome like 'a%';

-- 18
select autor.nome from autor
left join livro_autor on livro_autor.id_autor=autor.id_autor
left join livro on livro.id_livro=livro_autor.id_livro
where livro.id_livro is null;

-- 19
select editora.nome from editora
left join livro on livro.id_editora=editora.id_editora
where livro.id_livro is null;

-- 20
select estilo.nome from estilo
left join livro_estilo on livro_estilo.id_estilo=estilo.id_estilo
left join livro on livro.id_livro=livro_estilo.id_estilo
where livro.id_livro is null;

-- 21
select autor.nome, count(livro.id_livro) from autor
join livro_autor on livro_autor.id_autor=autor.id_autor
join livro on livro.id_livro=livro_autor.id_livro
group by autor.nome;

-- 22
select editora.nome, count(livro.id_livro) from editora
join livro on livro.id_editora=editora.id_editora
group by editora.nome;

-- 23
select estilo.nome, count(livro.id_livro) from estilo
join livro_estilo on livro_estilo.id_estilo=estilo.id_estilo
join livro on livro.id_livro=livro_estilo.id_livro
group by estilo.nome;

-- 24
select count(livro.id_livro) from livro
join editora on editora.id_editora=livro.id_editora
where editora.nome='CCCC';

-- 25
select count(livro.id_livro) from livro
join livro_autor on livro_autor.id_livro=livro.id_livro
join autor on autor.id_autor=livro_autor.id_autor
where autor.nome='J R R Tolkien';

