CREATE TABLE filme(
	idFilme int primary key,
    titulo varchar(50),
    genero varchar(40),
    diretor varchar(40)
);

INSERT INTO filme VALUES
	(1, 'OS VINGADORES', 'FICCAO CIENTIFICA', 'JOSS WHEDON'),	
	(2, 'O REI LEÃO', 'ANIMACAO', 'JON FAVREAU'),
	(3, 'JURASSIC WORLD: O MUNDO DOS DINOSSAUROS', 'FICCAO CIENTIFICA', 'COLIN TREVORROW'),
	(4, 'HOMEM-ARANHA: SEM VOLTA PARA CASA', 'FICCAO CIENTIFICA', 'JON WATTS'),
	(5, 'VINGADORES: GUERRA INFINITA', 'FICCAO CIENTIFICA', 'ANTHONY RUSSO'),
	(6, 'STAR WARS: O DESPERTAR DA FORÇA', 'FICCAO CIENTIFICA', 'JEFFREY JACOB ABRAMS'),
	(7, 'TITANIC', 'ROMANCE', 'JAMES CAMERON'),
	(8, 'AVATAR: O 	CAMINHO DA ÁGUA', 'FICCAO CIENTIFICA', 'JAMES CAMERON'),
	(9, 'VINGADORES: ULTIMATO', 'FICCAO CIENTIFICA', 'ANTHONY RUSSO'),
	(10, 'AVATAR', 'FICCAO CIENTIFICA', 'JAMES CAMERON');

SELECT * FROM filme;

ALTER TABLE filme ADD COLUMN protagonista varchar(50);

DESC filme;

UPDATE filme SET protagonista = 'SCARLETT JOHANSSON' WHERE idFilme = 1;
UPDATE filme SET protagonista = 'SIMBA' WHERE idFilme = 2;
UPDATE filme SET protagonista = 'CHRIS PRATT' WHERE idFilme = 3;
UPDATE filme SET protagonista = 'TOM HOLLAND' WHERE idFilme = 4;
UPDATE filme SET protagonista = 'ROBERT DOWNEY JR' WHERE idFilme = 5;
UPDATE filme SET protagonista = 'DAISY RIDLEY' WHERE idFilme = 6;
UPDATE filme SET protagonista = 'LEONARDO DICAPRIO' WHERE idFilme = 7;
UPDATE filme SET protagonista = 'SAM WORTHINGTON' WHERE idFilme = 8;
UPDATE filme SET protagonista = 'CHRIS EVANS' WHERE idFilme = 9;
UPDATE filme SET protagonista = 'ZOE SALDANA' WHERE idFilme = 10;

ALTER TABLE filme MODIFY COLUMN diretor varchar(150);

UPDATE filme SET diretor = 'FULANO DE TAL' WHERE idFilme = 5;

UPDATE filme SET diretor = 'CICLANO DE TAL' WHERE idFilme IN(2, 7);

UPDATE filme SET titulo = 'MAIS UM FILME QUALQUER' WHERE idFilme = 6;

DELETE from filme WHERE idFilme = 3;

SELECT * FROM filme WHERE genero != 'drama';

SELECT * FROM filme WHERE genero = 'suspense';

DESC filme;

DELETE FROM filme WHERE idFilme <= 10;