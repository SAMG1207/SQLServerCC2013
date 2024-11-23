DROP DATABASE ConfederationsCup2013
/*
CREATE DATABASE ConfederationsCup2013
--Creamos la tabla maestro de los equipos


--Creacion de tablas maestras
--Tabla de equipos
IF NOT EXISTS (
    SELECT 1
    FROM sys.tables
    WHERE name = 'Teams' AND SCHEMA_NAME(schema_id) = 'dbo'
)
BEGIN
    CREATE TABLE dbo.Teams (
        idTeamPk INT PRIMARY KEY IDENTITY(1,1),
        TeamName NVARCHAR(50) NOT NULL
    );
END;

-- Tabla de Fases 

IF NOT EXISTS (
    SELECT 1
    FROM sys.tables
    WHERE name = 'Stage' AND SCHEMA_NAME(schema_id) = 'dbo'
)
BEGIN
    CREATE TABLE dbo.Stage (
        idStage INT PRIMARY KEY IDENTITY(1,1),
		StageName NVARCHAR(20) NOT NULL
         
    );
END;


--Tabla de Posiciones
IF NOT EXISTS (
    SELECT 1
    FROM sys.tables
    WHERE name = 'Positions' AND SCHEMA_NAME(schema_id) = 'dbo'
)
BEGIN
    CREATE TABLE dbo.Position (
        idPositionk INT PRIMARY KEY IDENTITY(1,1),
        PositionName NVARCHAR(50) NOT NULL
    );
END;

--Tabla de estadios
IF NOT EXISTS (
    SELECT 1
    FROM sys.tables
    WHERE name = 'Stadiums' AND SCHEMA_NAME(schema_id) = 'dbo'
)
BEGIN
    CREATE TABLE dbo.Stadiums (
        idStadiumPk INT PRIMARY KEY IDENTITY(1,1),
        StadiumName NVARCHAR(50) NOT NULL,
		StadiumCity NVARCHAR(50) NOT NULL,
		StadiumCapacity INT NOT NULL
    );
END;

--Tabla de Jugadores, el insert de esta tabla sera importado del Excel que viene añadido
IF NOT EXISTS (
    SELECT 1
    FROM sys.tables
    WHERE name = 'Players' AND SCHEMA_NAME(schema_id) = 'dbo'
)
BEGIN
    CREATE TABLE dbo.Players (
        idPlayerPk INT PRIMARY KEY IDENTITY(1,1),
        PlayerName NVARCHAR(50) NOT NULL,
        PlayerTeamIdFk INT,
        PlayerPositionIdFk INT,
        PlayerDOB DATE,
        FOREIGN KEY (PlayerTeamIdFk) REFERENCES dbo.Teams(idTeamPk),
        FOREIGN KEY (PlayerPositionIdFk) REFERENCES dbo.Position(idPositionk)
    );
END;

--Tabla juegos
IF NOT EXISTS(
    SELECT 1
    FROM sys.tables
    WHERE name = 'Games' AND SCHEMA_NAME(schema_id) = 'dbo'
)
BEGIN
    CREATE TABLE dbo.Games
    (
        idGamePK INT PRIMARY KEY IDENTITY(1,1),
        DateOfGame DATE,
        StadiumId INT,
        HomeTeamId INT NOT NULL,
        AwayTeamId INT NOT NULL,
        HomeTeamGoals INT DEFAULT 0,
        AwayTeamGoals INT DEFAULT 0,
		StageIdFk INT NOT NULL
        FOREIGN KEY(StadiumId) REFERENCES dbo.Stadiums(idStadiumPk),
        FOREIGN KEY(HomeTeamId) REFERENCES dbo.Teams(idTeamPk),
        FOREIGN KEY(AwayTeamId) REFERENCES dbo.Teams(idTeamPk),
		FOREIGN KEY(StageIdFk) REFERENCES dbo.Stage(idStage)
    );
END;


--Tabla goles

IF NOT EXISTS (
    SELECT 1
    FROM sys.tables
    WHERE name = 'Goals' AND SCHEMA_NAME(schema_id) = 'dbo'
)
BEGIN
    CREATE TABLE dbo.Goals (
        idGoalPk INT PRIMARY KEY IDENTITY(1,1),
        idGameFk INT NOT NULL,
		GoalMinute TINYINT,
		PlayerIdFk INT NOT NULL,
		FOREIGN KEY (idGameFk) REFERENCES dbo.Games(idGamePK),
		FOREIGN KEY(PlayerIdFk) REFERENCES dbo.Players(idPlayerPk)
    );
END;