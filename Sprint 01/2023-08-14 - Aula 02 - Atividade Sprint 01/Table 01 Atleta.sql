CREATE DATABASE sprint1;

USE sprint1;

CREATE TABLE atleta(
	idAtleta int primary key,
	nome varchar(40),
    modalidade varchar(40),
    qtdMedalha int
);

INSERT INTO atleta VALUES
	(1, 'MICHAEL PHELPS', 'NATACAO', 28),
    (2, 'LARISA LATYNINA', 'GINASTICA', 18),
    (3, 'NIKOLAI ANDRIANOV', 'GINASTICA', 15),
    (4, 'EDOARDO MANGIAROTTI', 'ESGRIMA', 13),
    (5, 'TAKASHI ONO', 'GINASTICA', 13),
    (6, 'BORIS SHAKLIN', 'GINASTICA', 13),
    (7, 'PAAVO NURMI', 'ATLETISMO', 12),
    (8, 'ALEXEI NEMOV', 'GINASTICA', 12),
    (9, 'DARA TORRES', 'NATACAO', 12),
    (10, 'NATALIE COUGHLIN', 'NATACAO', 12),
    (11, 'ROBERT SCHEIDT', 'VELA', 5),
    (12, 'TORBEN GRAEL', 'VELA', 5);
    
SELECT * FROM atleta;

SELECT nome, qtdMedalha FROM atleta;

SELECT * FROM atleta
	WHERE modalidade = 'NATACAO';
    
SELECT * FROM atleta ORDER BY modalidade;

SELECT * FROM atleta ORDER BY qtdMedalha DESC;

SELECT * FROM atleta ORDER BY qtdMedalha ASC;

SELECT * FROM atleta
	WHERE nome LIKE '%S%';

SELECT * FROM atleta
	WHERE nome LIKE 'N%';

SELECT * FROM atleta
	WHERE nome LIKE '%O';

SELECT * FROM atleta
	WHERE nome LIKE '%R_';

DROP TABLE atleta;