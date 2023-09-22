CREATE TABLE revista(
	idRevista int primary key NOT NULL auto_increment,
    nome varchar(40),
    categoria varchar(30)
);

INSERT INTO revista (nome) VALUES
	('BLOOMBERG'),
    ('QUATRO RODAS'),
    ('AUTO ESPORTE'),
    ('NEW STATESMAN');

SELECT * FROM revista;

UPDATE revista SET categoria = 'ECONOMIA' WHERE idRevista = 1;
UPDATE revista SET categoria = 'AUTOMOBILISMO' WHERE idRevista = '2';
UPDATE revista SET categoria = 'AUTOMOBILISMO' WHERE idRevista = '3';

SELECT * FROM revista;

INSERT INTO revista (nome, categoria) VALUES
	('REVISTA QUALQUER', 'TEEN'),
    ('MAIS UMA REVISTA', 'MODA'),
    ('OUTRA REVISTA QUALQUER', 'TECNOLOGIA');
    
SELECT * FROM revista;

DESC revista;

ALTER TABLE revista MODIFY COLUMN categoria varchar(40);

DESC revista;

ALTER TABLE revista ADD COLUMN periodicidade varchar(15);

SELECT * FROM revista;

ALTER TABLE revista DROP COLUMN periodicidade;

DESC revista;