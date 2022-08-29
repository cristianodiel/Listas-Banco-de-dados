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
select 
