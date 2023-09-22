use sprint2aula06;

CREATE TABLE Musica(
	idMusica int primary key,
	titulo varchar(40),
    artista varchar(40),
    genero varchar(40)
);

INSERT INTO Musica VALUES
	(1, 'TERMINA COMIGO ANTES', 'GUSTAVO LIMA', 'SERTANEJO'),
	(2, 'ABALO EMOCIONAL', 'LUAN SANTANA', 'SERTANEJO'),
	(3, 'VAGABUNDO CHORA', 'GUILHERME E BENUTO', 'SERTANEJO'),
	(4, 'QUINTAL', 'MELIM', 'MPB'),
	(5, 'IDIOTA', 'JAO', 'MPB'),
	(6, 'EVIDENCIAS', 'ROBERTO CARLOS', 'MPB'),
	(7, 'TE VER SUPERAR', 'JOTA QUEST', 'ROCK'),
	(8, 'ALGO PARECIDO', 'SKANK', 'ROCK'),
	(9, 'MORRER DE AMOR', 'JOTA QUEST', 'ROCK'),
	(10, 'SO EU SEI', 'CAPITAL INICIAL', 'ROCK');
    
select * from musica;

create table album (
	idAlbum int primary key auto_increment,
    nome varchar(40),
    tipo varchar(40),
    dtLancamento date
)auto_increment = 1000;

insert into album values
	(null, 'O Embaixador 15 Anos', 'Digital', '2023-06-15'),
    (null, 'Luan City (Ao Vivo)', 'Digital', '2022-08-08'),
    (null, 'Vagabundo Chora (Ao Vivo)', 'Digital', '2022-02-10'),
    (null, 'Quintal', 'Digital', '2022-11-16'),
    (null, 'Pirata', 'Digital', '2021-10-19'),
    (null, 'Evidencias', 'Digital', '2022-12-10'),
    (null, 'Te Ver Superar', 'Digital', '2022-05-16'),
    (null, 'Os Três Primeiros', 'Físico', '2018-10-10'),
    (null, 'Acústico Jota Quest', 'Físico', '2017-09-22'),
    (null, 'Sonora', 'Físico', '2018-12-14');

select * from musica;
select * from album;

alter table musica add column fkAlbum int;

alter table musica add constraint fkDisco
	foreign key (fkAlbum)
		references album(idAlbum);
        
update musica set fkAlbum = 1009
	where idMusica = 10;

select * from musica join album
	on fkAlbum = idAlbum;
    
select musica.titulo as Titulo, album.nome as Album from musica join album
on fkalbum = idalbum;

select musica.*, album.nome as Album, album.dtLancamento as 'Data de Lançamento' from musica join album
on fkAlbum = idAlbum where album.tipo = 'Físico';