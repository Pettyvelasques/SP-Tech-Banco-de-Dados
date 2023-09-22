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

SELECT * FROM Musica;

SELECT titulo, artista FROM Musica;

SELECT * FROM Musica
	WHERE genero = 'ROCK';

SELECT * FROM Musica
	WHERE artista = 'JOTA QUEST';

SELECT * FROM Musica ORDER BY titulo;

SELECT * FROM Musica ORDER BY artista DESC;

SELECT * FROM Musica ORDER BY artista ASC;

SELECT * FROM Musica
	WHERE titulo LIKE 'A%';

SELECT * FROM Musica
	WHERE artista LIKE '%A';

SELECT * FROM Musica
	WHERE genero LIKE '_E%';

SELECT * FROM Musica
	WHERE titulo LIKE '%A_';

DROP TABLE Musica;