CREATE TABLE musica(
	idMusica int primary key,
    titulo varchar(40),
    artista varchar(40),
    genero varchar(40)
);

INSERT INTO musica VALUES
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
    
SELECT * FROM musica;

ALTER TABLE musica ADD COLUMN curtidas int;

UPDATE musica SET curtidas = 92839 WHERE idMusica = 1;
UPDATE musica SET curtidas = 5464 WHERE idMusica = 2;
UPDATE musica SET curtidas = 56465 WHERE idMusica = 3;
UPDATE musica SET curtidas = 434235 WHERE idMusica = 4;
UPDATE musica SET curtidas = 3213 WHERE idMusica = 5;
UPDATE musica SET curtidas = 42134 WHERE idMusica = 6;
UPDATE musica SET curtidas = 312314 WHERE idMusica = 7;
UPDATE musica SET curtidas = 8675 WHERE idMusica = 8;
UPDATE musica SET curtidas = 98456 WHERE idMusica = 9;
UPDATE musica SET curtidas = 0786463 WHERE idMusica = 10;

DESC musica;

ALTER TABLE musica MODIFY COLUMN artista varchar(60);

UPDATE musica SET curtidas = 876098 WHERE idMusica = 1;

UPDATE musica SET curtidas = 97865 WHERE idMusica IN(2,3);

UPDATE musica SET titulo = 'VOU MORRER SOZINHO' WHERE idMusica = 5;

DELETE FROM musica WHERE idMusica = 4;

SELECT * FROM musica WHERE genero != 'FUNK';

SELECT * FROM musica WHERE curtidas >= 20;

DESC musica;

DELETE FROM musica WHERE idMusica <= 10;