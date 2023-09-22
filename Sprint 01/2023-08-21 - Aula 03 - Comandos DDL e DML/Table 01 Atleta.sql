CREATE DATABASE sprint1Aula03;

USE sprint1Aula03;

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

UPDATE atleta SET qtdMedalha = 29 WHERE idAtleta = 1;

UPDATE atleta SET qtdMedalha = 19 WHERE idAtleta IN(2,3);

UPDATE atleta SET nome = 'PIETRA JOSEFINOV' WHERE idAtleta = 4;

ALTER TABLE atleta ADD COLUMN dtNasc date;

DESC atleta;

UPDATE atleta SET dtNasc = '1985-06-30' WHERE idAtleta = 1;
UPDATE atleta SET dtNasc = '1934-12-27' WHERE idAtleta = 2;
UPDATE atleta SET dtNasc = '1952-10-14' WHERE idAtleta = 3;
UPDATE atleta SET dtNasc = '1919-04-07' WHERE idAtleta = 4;
UPDATE atleta SET dtNasc = '1931-07-26' WHERE idAtleta = 5;
UPDATE atleta SET dtNasc = '1932-01-27' WHERE idAtleta = 6;
UPDATE atleta SET dtNasc = '1897-06-13' WHERE idAtleta = 7;
UPDATE atleta SET dtNasc = '1976-05-28' WHERE idAtleta = 8;
UPDATE atleta SET dtNasc = '1967-04-15' WHERE idAtleta = 9;
UPDATE atleta SET dtNasc = '1982-08-23' WHERE idAtleta = 10;
UPDATE atleta SET dtNasc = '1973-04-15' WHERE idAtleta = 11;
UPDATE atleta SET dtNasc = '1960-07-22' WHERE idAtleta = 12;

DELETE FROM atleta WHERE idAtleta = 5;

SELECT * FROM atleta WHERE modalidade != 'NATACAO';

SELECT * FROM atleta WHERE qtdMedalha >= 3;

ALTER TABLE atleta MODIFY COLUMN modalidade varchar(60);

DESC atleta;

DELETE FROM atleta WHERE idAtleta <= 12;