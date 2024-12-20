USE [ConfederationsCup2013]
GO
/****** Object:  StoredProcedure [dbo].[InsertJuego]    Script Date: 24/11/2024 11:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[InsertJuego]
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
END;
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
--EXEC InsertJuego '19 June 2013', 'Recife', 'Italia', 'Japón', 4, 3, 'Fase de Grupos'
--EXEC InsertJuego '22 June 2013', 'Salvador', 'Italia', 'Brasil', 2, 4, 'Fase de Grupos'
--EXEC InsertJuego '22 June 2013', 'Belo Horizonte', 'Japón', 'México', 1, 2, 'Fase de Grupos'
--EXEC InsertJuego '16 June, 2013', 'Recife', 'España', 'Uruguay', 2, 1, 'Fase de Grupos'
--EXEC InsertJuego '16 June, 2013', 'Recife', 'España', 'Uruguay', 2, 1, 'Fase de Grupos'
--EXEC InsertJuego '17 June, 2013', 'Belo Horizonte', 'Nigeria', 'Tahiti', 6, 1, 'Fase de Grupos'
--EXEC InsertJuego '20 June, 2013', 'Rio de Janeiro', 'España', 'Tahiti', 10, 0, 'Fase de Grupos'
--EXEC InsertJuego '16 June, 2013', 'Salvador', 'Nigeria', 'Uruguay', 1, 2, 'Fase de Grupos'
--EXEC InsertJuego '23 June, 2013', 'Fortaleza', 'Nigeria', 'España', 0, 3, 'Fase de Grupos'
--EXEC InsertJuego '23 June, 2013', 'Recife', 'Uruguay', 'Tahiti', 8, 0, 'Fase de Grupos'
--EXEC InsertJuego '26 June, 2013', 'Belo Horizonte', 'Brasil', 'Uruguay', 2, 1, 'Semifinal'
--EXEC InsertJuego '27 June, 2013', 'Fortaleza', 'España', 'Italia', 0, 0, 'Semifinal'
--EXEC InsertJuego '30 June, 2013', 'Salvador', 'Uruguay', 'Italia', 2, 2, 'tercer lugar'
--EXEC InsertJuego '30 June, 2013', 'Rio de Janeiro', 'Brasil', 'España', 3, 0, 'Final'