-- Create a new database called 'Tarea'
-- Connect to the 'master' database to run this snippet
USE master
GO
-- Create the new database if it does not exist already
IF EXISTS (
    SELECT name
        FROM sys.databases
        WHERE name = N'Tarea'
)
DROP DATABASE Tarea
GO
CREATE DATABASE Tarea
GO
USE Tarea
GO
CREATE TABLE [dbo].[HorariosT](
	Id [INT] IDENTITY(1,1) NOT NULL, -- primary key column
	DiaTipo [int] NOT NULL,
	ClasesDia [varchar](25) NOT NULL,
	Periodo [varchar](25) NOT NULL,
	TipoPer [int] NOT NULL,
	Hora [varchar](18) NOT NULL,
	HorasPP [int] NOT NULL,
	HorasPI [int] NOT NULL,
	HorasPV [int] NOT NULL,
CONSTRAINT pkHorariosT PRIMARY KEY(id)
);
GO

INSERT INTO HorariosT 
(
  [DiaTipo], [ClasesDia], [Periodo], [TipoPer], [Hora], [HorasPP], [HorasPI], [HorasPV]
)
VALUES
(
    2,'Laborable', N'De punta', 1, N'18 a 22', 10, 9, 5
),
(
    3,'Sabado', N'De punta', 1, N'12 a 13', 2, 16, 6
),
(
    5,'Sabado', N'De punta', 1, N'19 a 20', 2, 16, 6
),
(
    2,'Laborable', N'Intermedio', 2, N'5 a 10', 10, 9, 5
),
(
    3,'Laborable', N'Intermedio', 2, N'16 a 18', 10, 9, 5
),
(
    8,'Laborable', N'Intermedio', 2, N'22 a 24', 10, 9, 5
),
(
    5,'Sabado', N'Intermedio', 2, N'6 a 12', 2, 16, 6
)
GO


-- Select rows from a Table or View 'HorariosT' in schema 'dbo'
SELECT * FROM dbo.HorariosT
--WHERE 	/* add search conditions here */
GO
