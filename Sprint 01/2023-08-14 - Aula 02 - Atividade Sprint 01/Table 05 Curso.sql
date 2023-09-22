CREATE TABLE curso(
	idCurso int primary key,
    nome varchar(50),
    sigla char(3),
    coordenador varchar(50)
);

INSERT INTO curso VALUES
	(1, 'CIÊNCIA DA COMPUTAÇÃO', 'CCO', 'MARISE MIRANDA'),
	(2, 'SISTEMAS DE INFORMAÇÃO', 'SIS', 'ALEX BARREIRA'),
    (3, 'ANÁLISE E DESENVOLVIMENTO DE SISTEMAS', 'ADS', 'GERSON SANTOS');
    
SELECT * FROM curso;

SELECT coordenador FROM curso;

SELECT * FROM curso WHERE sigla = "ADS";

SELECT * FROM curso ORDER BY nome ASC;

SELECT * FROM curso ORDER BY coordenador DESC;

SELECT * FROM curso WHERE nome LIKE 'A%';

SELECT * FROM curso WHERE nome LIKE '%O';

SELECT * FROM curso WHERE nome LIKE '_I%';

SELECT * FROM curso WHERE nome LIKE '%A_';

DROP TABLE curso;