CREATE PROCEDURE "ADD" (@number1 INT, @number2 INT)
AS
BEGIN 

DECLARE @result INT
SET @result=@number1+@number2

RETURN @result

END
