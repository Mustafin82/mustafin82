
CREATE TABLE [dbo].[Persons]
(
	[Id] INT NOT NULL PRIMARY KEY identity, 
    [LastName] NVARCHAR(50) NOT NULL, 
    [FirstName] NVARCHAR(50) NOT NULL, 
    [MiddleName] NVARCHAR(50) NULL, 
	[SectorID] int null,
    [Phone] NCHAR(25) NULL, 
    [TabNum] INT NOT NULL, 
    [PositionID] INT NULL, 
    foreign key ([SectorID]) references Sectors(Id), 
    FOREIGN KEY ([PositionID]) REFERENCES Position(ID)
)