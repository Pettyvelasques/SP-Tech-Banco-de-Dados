-- CREATE DATABASE continuada1;
-- USE continuada1;

DROP TABLE historico;

CREATE TABLE historico (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(200) NOT NULL,
dataHora DATETIME DEFAULT current_timestamp,
url VARCHAR(250) NOT NULL,
navegador VARCHAR(100)
);

INSERT INTO historico (nome, url, navegador) VALUES
	('São Paulo Tech School', 'https://moodle.sptech.school/', 'Microsoft Edge'),
	('Página Inicial - Microsoft Azure', 'https://portal.azure.com/#home', 'Microsoft Edge'),
	('Ofertas e Promoções | Amazon.com.br', 'https://www.amazon.com.br/deals?ref_=nav_cs_gb', 'Firefox Developer Edition'),
	('404 Not Found', 'http://moodletech.azurewebsites.net/', 'Firefox Developer Edition'),
	('Working...', 'https://login.microsoftonline.com/kmsi', 'Firefox Developer Edition'),
	('Email - Usuario Aluno - Outlook', 'https://outlook.office.com/mail/', 'Firefox Developer Edition'),
	('Solicitações - Suporte - Digital Building', 'https://bandtec.sdpondemand.manageengine.com/app/itdesk/ui/requests', 'Firefox Developer Edition'),
	('Carrinho de compras da Amazon.com', 'https://www.amazon.com.br/gp/cart/view.html?ref_=nav_cart', 'Firefox Developer Edition'),
	('MySQL | Begin Your Download', 'https://dev.mysql.com/downloads/file/?id=516926', 'Firefox Developer Edition'),
	('MySQL | Download MySQL Installer', 'https://dev.mysql.com/downloads/installer/', 'Firefox Developer Edition');

SELECT * FROM historico;

SELECT id FROM historico WHERE nome = 'Página Inicial - Microsoft Azure';
UPDATE historico SET dataHora = '2023-02-31 08:00:00' WHERE id = 2;

ALTER TABLE historico RENAME COLUMN nome TO titulo;
DESC historico;

INSERT INTO historico (nome, url, navegador) VALUES 
	('404 Not Found', 'http://moodletech.azurewebsites.net/', 'Google Chrome');
SELECT * FROM historico WHERE nome = '404 Not Found' AND 'Google Chrome';
-- Comando das linhas 34 a 37 apresentam erro "Error Code: 1054. Unknown column 'nome' ", a coluna nome foi renomeada para titulo no comando da linha 31;

INSERT INTO historico (titulo, url, navegador) VALUES 
	('404 Not Found', 'http://moodletech.azurewebsites.net/', 'G	oogle Chrome');
SELECT * FROM historico WHERE titulo = '404 Not Found' AND navegador = 'Google Chrome';
-- Comando das linhas 39 a 41 estão com nome da coluna corrigidos para substituir o comando dado anteriormente que apresentava erro;

SELECT * FROM historico WHERE url LIKE '%t_';

SELECT * FROM historico WHERE url LIKE '%/';

SELECT id FROM historico WHERE nome = 'Working...';
UPDATE historico SET navegador = 'Google Chrome' WHERE id = 5;
-- Comando das linhas 48 e 49 apresentam erro "Error Code: 1054. Unknown column 'nome' ", a coluna nome foi renomeada para titulo no comando da linha 31;


SELECT id FROM historico WHERE titulo = 'Working...';
UPDATE historico SET navegador = 'Google Chrome' WHERE id = 5;
-- Comando das linhas 53 e 54 estão com nome da coluna corrigidos para substituir o comando dado anteriormente que apresentava erro;

ALTER TABLE historico ADD CONSTRAINT 
	CHECK (navegador IN ('Microsoft Edge', 'Firefox Developer Edition', 'Google Chrome'));

INSERT INTO historico (nome, url, dataHora) VALUES
	('Fazer login no Canvas (instructure.com)', 'https://awsacademy.instructure.com/login/canvas', '2023-02-16 10:36:00');
-- Comando das linhas 60 e 61 apresentam erro "Error Code: 1054. Unknown column 'nome' ", a coluna nome foi renomeada para titulo no comando da linha 31;

INSERT INTO historico (titulo, url, dataHora) VALUES
	('Fazer login no Canvas (instructure.com)', 'https://awsacademy.instructure.com/login/canvas', '2023-02-16 10:36:00');
-- Comando das linhas 53 e 54 estão com nome da coluna corrigidos para substituir o comando dado anteriormente que apresentava erro;

SELECT * FROM historico WHERE nome LIKE '%Download%';
-- Comando da linha 68 apresenta erro "Error Code: 1054. Unknown column 'nome' ", a coluna nome foi renomeada para titulo no comando da linha 31;


SELECT * FROM historico WHERE titulo LIKE '%Download%';
-- Comando da linha 72 está com nome da coluna corrigidos para substituir o comando dado anteriormente que apresentava erro;

DELETE FROM historico WHERE id in (9,10);

SELECT * FROM historico WHERE url LIKE '%amazon%';

SELECT * FROM historico WHERE nome LIKE 'M%';
-- Comando da linha 79 apresenta erro "Error Code: 1054. Unknown column 'nome' ", a coluna nome foi renomeada para titulo no comando da linha 31;

SELECT * FROM historico WHERE titulo LIKE 'M%';
-- Comando da linha 82 está com nome da coluna corrigidos para substituir o comando dado anteriormente que apresentava erro;

DROP TABLE historico;