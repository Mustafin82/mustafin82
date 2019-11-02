CREATE TABLE [dbo].[Zarplata]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
	[LastnameId] INT NOT NULL, 
    [Date] DATE NULL, 
    [Summ] DECIMAL(18, 2) NULL 
	--CONSTRAINT fk_zarplata_person foreign key ([Lastname]) references Persons(id)

)
