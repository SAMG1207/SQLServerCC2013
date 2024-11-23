/*CREATE PROCEDURE InsertJuego
(
	@svDate NVARCHAR(50) = NULL,
	@svCity NVARCHAR(50) = NULL,
	@svHomeTeam NVARCHAR(50) = NULL,
	@svAwayTeam NVARCHAR(50) = NULL,
	@inHomeGoals INT = 0,
	@inAwayGoals INT = 0,
	@svStage NVARCHAR(50) = NULL
)
AS
BEGIN
	DECLARE	
		@inCity      INT,
		@inHomeTeam  INT,
		@inAwayTeam  INT,
		@inStage     INT

    SELECT  @inCity = idStadiumPk FROM Stadiums WHERE StadiumCity = @svCity;
    SELECT @inHomeTeam = idTeamPk FROM Teams WHERE TeamName = @svHomeTeam;
	SELECT @inAwayTeam = idTeamPk FROM Teams WHERE TeamName = @svAwayTeam;
	SELECT @inStage = [idStage] FROM dbo.Stage WHERE StageName = @svStage;
	
	INSERT dbo.Games(DateOfGame, StadiumId,[HomeTeamId],[AwayTeamId],[HomeTeamGoals],[AwayTeamGoals],[StageIdFk])
	VALUES(@svDate, @inCity, @inHomeTeam, @inAwayTeam, @inHomeGoals, @inAwayGoals, @inStage);
END;*/

/*
EXEC InsertJuego
	@svDate = 'June 15, 2013',
	@svCity = 'Brasilia',
	@svHomeTeam  = 'Brasil',
	@svAwayTeam  = 'Japón',
	@inHomeGoals = 3,
	@inAwayGoals = 0,
	@svStage = 'Fase de Grupos'
*/
/*
EXEC InsertJuego
	'16 June 2013',
	'Rio de Janeiro',
	'México',
	'Italia',
	1,
	2,
	'Fase de Grupos'
*/


--EXEC InsertJuego '19 June 2013', 'Fortaleza', 'Brasil', 'México', 2, 1, 'Fase de Grupos'

	SELECT * FROM Games