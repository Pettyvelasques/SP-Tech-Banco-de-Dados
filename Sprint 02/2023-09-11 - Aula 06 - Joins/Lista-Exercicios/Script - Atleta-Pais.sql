use sprint2aula06;

create table atleta (
	idAtleta int primary key auto_increment,
    nome varchar(40),
    modalidade varchar(40),
    qtdMedalha int
);

insert into atleta values
	(null, 'MICHAEL PHELPS', 'NATACAO', 28),
    (null, 'LARISA LATYNINA', 'GINASTICA', 18),
    (null, 'NIKOLAI ANDRIANOV', 'GINASTICA', 15),
    (null, 'EDOARDO MANGIAROTTI', 'ESGRIMA', 13),
    (null, 'TAKASHI ONO', 'GINASTICA', 13),
    (null, 'BORIS SHAKLIN', 'GINASTICA', 13),
    (null, 'PAAVO NURMI', 'ATLETISMO', 12),
    (null, 'ALEXEI NEMOV', 'GINASTICA', 12),
    (null, 'DARA TORRES', 'NATACAO', 12),
    (null, 'NATALIE COUGHLIN', 'NATACAO', 12),
    (null, 'ROBERT SCHEIDT', 'VELA', 5),
    (null, 'TORBEN GRAEL', 'VELA', 5);

select * from atleta;

create table pais(
	idPais int primary key auto_increment,
    nome varchar(30),
    capital varchar(40)
)auto_increment = 1000;

insert into pais value
	(null, 'Estados Unidos', 'Washington, D.C'),
    (null, 'Ucrania', 'Kiev'),
    (null, 'Russia', 'Moscou'),
    (null, 'Italia', 'Roma'),
    (null, 'Japão', 'Toquio'),
    (null, 'Finlandia', 'Helsinque'),
    (null, 'Brasil', 'Brasilia, D.F');
    
select * from pais;

alter table atleta add column fkPais int;

alter table atleta add constraint fkCountry
	foreign key (fkPais)
		references pais(idPais);

update atleta set fkPais = 1006
	where idAtleta = 12;
    
select * from atleta join pais
	on idPais = fkPais order by idAtleta;
    
select atleta.nome as Atleta, pais.nome as Pais from atleta join pais
	on idpais = fkPais order by pais.nome;
    
select * from atleta join pais on idPais = fkPais where capital = 'roma';