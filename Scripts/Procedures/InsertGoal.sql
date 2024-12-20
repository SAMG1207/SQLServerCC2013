USE [ConfederationsCup2013]
GO
/****** Object:  StoredProcedure [dbo].[InsertGoal]    Script Date: 24/11/2024 12:52:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[InsertGoal]
	(
		@svHomeTeam   NVARCHAR(50) = NULL,
		@svAwayTeam   NVARCHAR(50) = NULL,
		@svStage      NVARCHAR(50) = NULL,
		@svPlayerGame NVARCHAR(50) = NULL,
		@inGoalMinute INT

	)
AS
BEGIN
	DECLARE 
		@inHomeTeam INT,
		@inAwayTeam INT,
		@inStage    INT,
		@inPlayer   INT,
		@inGame     INT
		

	SELECT @inHomeTeam = idTeamPk FROM Teams WHERE TeamName = @svHomeTeam;
	SELECT @inAwayTeam = idTeamPk FROM Teams WHERE TeamName = @svAwayTeam;
	SELECT @inStage = [idStage] FROM dbo.Stage WHERE StageName = @svStage; 
	SELECT @inPlayer = [idPlayerPk] FROM [dbo].[Players] WHERE PlayerName LIKE '%'+ @svPlayerGame;
	SELECT @inGame = idGamePk FROM [dbo].[Games] WHERE [HomeTeamId] = @inHomeTeam
		AND [AwayTeamId] = @inAwayTeam 
		AND [StageIdFk] = @inStage
	
	INSERT INTO Goals([idGameFk],[GoalMinute],[PlayerIdFk])
	VALUES(@inGame, @inGoalMinute, @inPlayer);

	
END;