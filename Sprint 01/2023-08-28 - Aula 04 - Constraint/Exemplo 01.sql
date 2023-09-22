-- aula 04

create database sprint1aula04;

use sprint1aula04;

create table professor (
	id int primary key auto_increment,
	nome varchar(50) NOT NULL,
	cpf CHAR(11) UNIQUE, -- o cpf nao pode se repetir
	dtAtual DATETIME default current_timestamp,
	email varchar(30) default 'sem email'
);

INSERT INTO professor (nome) VALUES
	('Vivian'),
    ('JP'),
    ('Caramico');
    
SELECT * FROM professor;

ALTER TABLE professor ADD COLUMN funcao varchar(40);

ALTER TABLE professor ADD CONSTRAINT chkFuncao CHECK (funcao IN ('Monitor', 'Titular', 'Assistente'));

UPDATE professor SET funcao = 'Titular' WHERE id IN (1, 2, 3);
UPDATE professor SET email ='vivian@sptech.school' WHERE ID = 1;

SELECT funcao FROM professor WHERE id = 1;

-- APELIDADE - ALIASES
SELECT funcao AS Função FROM professor;
SELECT funcao Função FROM professor;

--  CONCATENAR
SELECT concat(nome, funcao) FROM professor;
SELECT concat(nome, ' ', funcao) FROM professor;
SELECT concat('O nome do professor é ', nome, ' ', funcao) FROM professor;
SELECT concat('O nome do professor é ', nome, ' ', funcao) AS Frase FROM professor;