create procedure multiply(@number1 INT,@number2 INT)
AS
BEGIN

DECLARE @result INT
SET @result=@number1*@number2
SELECT CONCAT('The product of ', @number1, ' and ', @number2, ' is ', @result)

end