create database sprint2aula06;

use sprint2aula06;

create table empresa (
	idEmpresa int primary key auto_increment,
	nome varchar(45),
    responsavel varchar(45)
    ) auto_increment = 1000;
    
insert into empresa values 
	(null, 'c6bank', 'Andresa'),
    (null, 'accenture', 'Rafael');
    
select * from empresa;

create table aluno (
ra char(8) primary key,
nome varchar(45),
bairro varchar(45)
-- , fkEmpresa int,
-- constraint fkEmp foreign key (fkEmpresa)
-- references empresa(idEmpresa)
);

insert into aluno value
("01232002", "Patrick", "Vila Formosa");

select * from aluno;

alter table aluno add column fkEmpresa int;

describe aluno;

alter table aluno add constraint fkEmp
	foreign key (fkEmpresa)
		references empresa(idEmpresa);

SELECT * FROM aluno;

INSERT INTO aluno VALUES
	('01232998', 'Luana', 'Paraíso', 1001),
    ('01231997', 'Sabrina', 'Paraíso', 1001);

UPDATE aluno SET fkEmpresa = 1000
	WHERE ra = '01232002';


-- NOSSO PRIMEIRO JOIN
SELECT * FROM aluno JOIN empresa
	ON idEmpresa = fkEmpresa;
    
    
select a.nome as NomeAluno,
e.nome as NomeEmpresa
	FROM aluno as a JOIN empresa as e
		ON idEmpresa = fkEmpresa;