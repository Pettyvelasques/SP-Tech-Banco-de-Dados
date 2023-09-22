CREATE TABLE professor(
	idProfessor int primary key,
    nome varchar(50),
    especialidade varchar(40),
    dtNasc date
);

INSERT INTO professor VALUES
	(1, 'VIVIAN SILVA', 'BANCO DE DADOS', '1975-06-13'),
	(2, 'MARISE DE BARROS', 'ENGENHARIA DE PRODUÇÃO', '1965-03-21'),
	(3, 'FERNANDO BRANDAO', 'PROCESSAMENTO DE DADOS', '1977-06-10'),
	(4, 'MÔNICA HERRERO', 'ADMINISTRAÇÃO DE EMPRESAS', '1978-03-02'),
	(5, 'KALINE BARREIRA', 'PSICOPEDAGOGIA INSTITUCIONAL', '1976-01-22'),
	(6, 'GERSON SANTOS', 'GERENCIAMENTO DE PROJETOS', '1974-01-11'),
	(7, 'VERA GOULART', 'ADMINISTRAÇÃO DE RECURSOS HUMANOS', '1980-12-18'),
    (8, 'ALESSANDRO GOULART', 'ADMINISTRAÇÃO DE EMPRESAS', '1978-11-10');
    
SELECT * FROM professor;

ALTER TABLE professor ADD COLUMN funcao varchar(50);

ALTER TABLE professor ADD CONSTRAINT chkFuncao
	CHECK (funcao IN ('MONITOR', 'ASSISTENTE', 'TITULAR'));
    
UPDATE professor SET funcao = 'TITULAR' WHERE idProfessor <= 8;

SELECT * FROM professor;

INSERT INTO professor VALUES
	(9, 'PROFESSORA DE TAL', 'ANALISE DE SISTEMAS', '1988-12-10', 'TITULAR');

DELETE FROM professor WHERE idProfessor = 5;

SELECT * FROM professor WHERE funcao = 'TITULAR';

SELECT especialidade, dtNasc FROM professor WHERE funcao = 'MONITOR';

UPDATE professor SET dtNasc = '1988-12-22' WHERE idProfessor = 3;

DELETE FROM professor WHERE idProfessor <= 9;