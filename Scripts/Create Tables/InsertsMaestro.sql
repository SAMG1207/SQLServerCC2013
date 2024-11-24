--INSERTS
/*
INSERT INTO Teams(TeamName) VALUES
('Brasil'),
('Japón'),
('México'),
('Italia'),
('España'),
('Uruguay'),
('Tahiti'),
('Nigeria')

SELECT * FROM Teams
	
*/

/*
	
INSERT INTO [ConfederationsCup2013].dbo.Stadiums (StadiumName, StadiumCity, StadiumCapacity) 
VALUES
    ('Estádio do Maracanã', 'Rio de Janeiro', 76804),
    ('Estádio Castelão', 'Fortaleza', 64846),
    ('Arena Fonte Nova', 'Salvador', 52048),
    ('Estádio Nacional', 'Brasilia', 68009),
    ('Estádio Mineirão', 'Belo Horizonte', 62547),
    ('Arena Pernambuco', 'Recife', 44248);

SELECT * FROM [ConfederationsCup2013].dbo.Stadiums 

*/

/*
INSERT INTO [ConfederationsCup2013].dbo.Stage (StageName)
VALUES
    ('Fase de Grupos'),
    ('Semifinal'),
    ('tercer lugar'),
    ('Final');

	SELECT * FROM [ConfederationsCup2013].dbo.Stage

*/

/*

INSERT INTO [ConfederationsCup2013].dbo.Position (PositionName)
VALUES
('GK'),
('DF'),
('MF'),
('FW');
SELECT * FROM [ConfederationsCup2013].dbo.Position
*/

/*
INSERT INTO [ConfederationsCup2013].[dbo].[Players] (PlayerName, PlayerTeamIdFk,PlayerPositionIdFk,PlayerDOB) VALUES 
('Thiago Silva',1,2,'22 September 1984 '),
('Réver',1,2,'4 January 1985 '),
('Paulinho',1,3,'25 July 1988 '),
('Oscar',1,3,'9 September 1991 '),
('Neymar',1,4,'5 February 1992 '),
('Marcelo',1,2,'12-May-88'),
('Luiz Gustavo',1,3,'23 July 1987 '),
('Lucas Moura',1,3,'13 August 1992 '),
('Júlio César',1,1,'3 September 1979 '),
('Jô',1,4,'20 March 1987 '),
('Jefferson',1,1,'2 January 1983 '),
('Jean',1,3,'24 June 1986 '),
('Jádson',1,3,'5 October 1983 '),
('Hulk',1,4,'25 July 1986 '),
('Hernanes',1,3,'29-May-85'),
('Fred',1,4,'3 October 1983 '),
('Filipe Luís',1,2,'9 August 1985 '),
('Fernando',1,3,'3 March 1992 '),
('Diego Cavalieri',1,1,'1 December 1982 '),
('David Luiz',1,2,'22 April 1987 '),
('Dante',1,2,'18 October 1983 '),
('Dani Alves',1,2,'06-May-83'),
('Bernard',1,3,'8 September 1992 '),
('Eiji Kawashima',2,1,'20 March 1983 '),
('Masahiko Inoha',2,2,'28 August 1985 '),
('Gōtoku Sakai',2,2,'14 March 1991 '),
('Keisuke Honda',2,3,'13 June 1986 '),
('Yuto Nagatomo',2,2,'12 September 1986 '),
('Atsuto Uchida',2,2,'27 March 1988 '),
('Yasuhito Endō',2,3,'28 January 1980 '),
('Hiroshi Kiyotake',2,4,'12 November 1989 '),
('Shinji Okazaki',2,4,'16 April 1986 '),
('Shinji Kagawa',2,4,'17 March 1989 '),
('Mike Havenaar',2,4,'20-May-87'),
('Shusaku Nishikawa',2,1,'18 June 1986 '),
('Hajime Hosogai',2,3,'10 June 1986 '),
('Kengo Nakamura',2,3,'31 October 1980 '),
('Yasuyuki Konno',2,2,'25 January 1983 '),
('Yuzo Kurihara',2,2,'18 September 1983 '),
('Makoto Hasebe ',2,3,'18 January 1984 '),
('Ryoichi Maeda',2,4,'9 October 1981 '),
('Takashi Inui',2,4,'2 June 1988 '),
('Hideto Takahashi',2,3,'17 October 1987 '),
('Hiroki Sakai',2,2,'12 April 1990 '),
('Maya Yoshida',2,2,'24 August 1988 '),
('Shūichi Gonda',2,1,'3 March 1989 '),
('Guillermo Ochoa',3,1,'13 July 1985 '),
('Francisco Rodríguez ',3,2,'20 October 1981 '),
('Carlos Salcido',3,2,'2 April 1980 '),
('Diego Reyes',3,2,'19 September 1992 '),
('Jesús Molina',3,3,'29 March 1988 '),
('Gerardo Torrado',3,3,'30 April 1979 '),
('Pablo Barrera',3,3,'21 June 1987 '),
('Ángel Reyna',3,3,'19 September 1984 '),
('Aldo de Nigris',3,4,'22 July 1983 '),
('Giovani dos Santos',3,4,'11-May-89'),
('Javier Aquino',3,3,'11 February 1990 '),
('Jesús Corona',3,1,'26 January 1981 '),
('Severo Meza',3,2,'9 July 1986 '),
('Javier Hernández',3,4,'1 June 1988 '),
('Héctor Moreno',3,2,'17 January 1988 '),
('Héctor Herrera',3,3,'19 April 1990 '),
('Jesús Zavala',3,3,'21 July 1987 '),
('Andrés Guardado',3,3,'28 September 1986 '),
('Raúl Jiménez',3,4,'05-May-91'),
('Jorge Torres Nilo',3,2,'16 January 1988 '),
('Hiram Mier',3,2,'25 August 1989 '),
('Gerardo Flores',3,2,'5 February 1986 '),
('Alfredo Talavera',3,1,'18 September 1982 '),
('Gianluigi Buffon',4,1,'28 January 1978 '),
('Christian Maggio',4,2,'11 February 1982 '),
('Giorgio Chiellini',4,2,'14 August 1984 '),
('Davide Astori',4,2,'7 January 1987 '),
('Mattia De Sciglio',4,2,'20 October 1992 '),
('Antonio Candreva',4,3,'28 February 1987 '),
('Alberto Aquilani',4,3,'7 July 1984 '),
('Claudio Marchisio',4,3,'19 January 1986 '),
('Mario Balotelli',4,4,'12 August 1990 '),
('Sebastian Giovinco',4,4,'26 January 1987 '),
('Alberto Gilardino',4,4,'5 July 1982 '),
('Salvatore Sirigu',4,1,'12 January 1987 '),
('Federico Marchetti',4,1,'7 February 1983 '),
('Stephan El Shaarawy',4,4,'27 October 1992 '),
('Andrea Barzagli',4,2,'08-May-81'),
('Daniele De Rossi',4,3,'24 July 1983 '),
('Alessio Cerci',4,4,'23 July 1987 '),
('Riccardo Montolivo',4,3,'18 January 1985 '),
('Leonardo Bonucci',4,2,'01-May-87'),
('Ignazio Abate',4,2,'12 November 1986 '),
('Andrea Pirlo',4,3,'19-May-79'),
('Emanuele Giaccherini',4,3,'05-May-85'),
('Alessandro Diamanti',4,3,'02-May-83'),
('Iker Casillas ',5,1,'20-May-81'),
('Raúl Albiol',5,2,'4 September 1985 '),
('Gerard Piqué',5,2,'2 February 1987 '),
('Javi Martínez',5,3,'2 September 1988 '),
('César Azpilicueta',5,2,'28 August 1989 '),
('Andrés Iniesta',5,3,'11-May-84'),
('David Villa',5,4,'3 December 1981 '),
('Xavi',5,3,'25 January 1980 '),
('Fernando Torres',5,4,'20 March 1984 '),
('Cesc Fàbregas',5,3,'04-May-87'),
('Pedro',5,4,'28 July 1987 '),
('Víctor Valdés',5,1,'14 January 1982 '),
('Juan Mata',5,3,'28 April 1988 '),
('Roberto Soldado',5,4,'27-May-85'),
('Sergio Ramos',5,2,'30 March 1986 '),
('Sergio Busquets',5,3,'16 July 1988 '),
('Álvaro Arbeloa',5,2,'17 January 1983 '),
('Jordi Alba',5,2,'21 March 1989 '),
('Nacho Monreal',5,2,'26 February 1986 '),
('Santi Cazorla',5,3,'13 December 1984 '),
('David Silva',5,3,'8 January 1986 '),
('Jesús Navas',5,3,'21 November 1985 '),
('Pepe Reina',5,1,'31 August 1982 '),
('Fernando Muslera',6,1,'16 June 1986 '),
('Diego Lugano ',6,2,'2 November 1980 '),
('Diego Godín',6,2,'16 February 1986 '),
('Sebastián Coates',6,2,'7 October 1990 '),
('Walter Gargano',6,3,'27 July 1984 '),
('Álvaro Pereira',6,3,'28 November 1985 '),
('Cristian Rodríguez',6,3,'30 September 1985 '),
('Sebastián Eguren',6,3,'8 January 1981 '),
('Luis Suárez',6,4,'24 January 1987 '),
('Diego Forlán',6,4,'19-May-79'),
('Abel Hernández',6,4,'8 August 1990 '),
('Juan Castillo',6,1,'17 April 1978 '),
('Matías Aguirregaray',6,2,'1 April 1989 '),
('Nicolás Lodeiro',6,3,'21 March 1989 '),
('Diego Pérez',6,3,'18-May-80'),
('Maxi Pereira',6,2,'8 June 1984 '),
('Egidio Arévalo Ríos',6,3,'27 September 1982 '),
('Gastón Ramírez',6,4,'2 December 1990 '),
('Andrés Scotti',6,2,'14 December 1975 '),
('Álvaro González',6,3,'29 October 1984 '),
('Edinson Cavani',6,4,'14 February 1987 '),
('Martín Cáceres',6,2,'7 April 1987 '),
('Martín Silva',6,1,'25 March 1983 '),
('Mikaël Roche',7,1,'24 December 1982 '),
('Alvin Tehau',7,4,'10 April 1989 '),
('Marama Vahirua',7,4,'12-May-80'),
('Teheivarii Ludivion',7,2,'1 July 1989 '),
('Tamatoa Wagemann',7,2,'18 March 1980 '),
('Henri Caroine',7,3,'7 September 1981 '),
('Heimano Bourebare',7,3,'15-May-89'),
('Stephane Faatiarau',7,2,'13 March 1990 '),
('Teaonui Tehau',7,4,'1 September 1992 '),
('Nicolas Vallar ',7,2,'22 October 1983 '),
('Stanley Atani',7,4,'27 January 1990 '),
('Edson Lemaire',7,2,'31 October 1990 '),
('Steevy Chong Hue',7,4,'26 January 1990 '),
('Rainui Aroita',7,3,'25 January 1994 '),
('Lorenzo Tehau',7,3,'10 April 1989 '),
('Ricky Aitamai',7,4,'22 December 1991 '),
('Jonathan Tehau',7,3,'9 January 1988 '),
('Yohann Tihoni',7,3,'20 July 1994 '),
('Vincent Simon',7,2,'28 September 1983 '),
('Yannick Vero',7,2,'28 February 1990 '),
('Samuel Hnanyine',7,4,'1 March 1984 '),
('Gilbert Meriel',7,1,'11 November 1986 '),
('Xavier Samin',7,1,'1 January 1978 '),
('Vincent Enyeama ',8,1,'29 August 1982 '),
('Go2rey Oboabona',8,2,'16 August 1990 '),
('Elderson Echiéjilé',8,2,'20 January 1988 '),
('John Ogu',8,3,'20 April 1988 '),
('Efe Ambrose',8,2,'18 October 1988 '),
('Azubuike Egwuekwe',8,2,'28 November 1988 '),
('Ahmed Musa',8,4,'14 October 1992 '),
('Brown Ideye',8,4,'10 October 1988 '),
('Joseph Akpala',8,4,'24 August 1986 '),
('Mikel John Obi',8,3,'22 April 1987 '),
('Mohammed Gambo',8,4,'10 March 1988 '),
('Solomon Kwambe',8,2,'30 September 1993 '),
('Fegor Ogude',8,3,'29 July 1987 '),
('Anthony Ujah',8,4,'14 October 1990 '),
('Michael Babatunde',8,3,'24 December 1992 '),
('Austin Ejide',8,1,'8 April 1984 '),
('Ogenyi Onazi',8,3,'25 December 1992 '),
('Emeka Eze',8,3,'22 December 1992 '),
('Sunday Mba',8,3,'28 November 1988 '),
('Nnamdi Oduamadi',8,4,'17 October 1990 '),
('Francis Benjamin',8,2,'20 June 1993 '),
('Kenneth Omeruo',8,2,'17 October 1993 '),
('Chigozie Agbim',8,1,'28 November 1984 ');

	SELECT * FROM [ConfederationsCup2013].[dbo].[Players] 
*/
SELECT * FROM Stadiums
INSERT [dbo].[Games] (DateOfGame, StadiumId, HomeTeamId, AwayTeamId, HomeTeamGoals, AwayTeamGoals)
VALUES
('June 15, 2013',
(SELECT idStadiumPk FROM Stadiums WHERE StadiumCity = 'Brasilia' ),
()
)