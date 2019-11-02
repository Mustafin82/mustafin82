CREATE FUNCTION [dbo].[sumpos]
(
	
)
RETURNS INT
AS
BEGIN
	RETURN (select SUM (Summ) from Operation)
END
