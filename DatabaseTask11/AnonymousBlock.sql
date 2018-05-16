BEGIN

DECLARE @number1 INT = 1
DECLARE @number2 INT = 5

DECLARE @result INT

EXEC @result = "ADD"@number1,@number2

SELECT CONCAT('The sum of ', @number1, ' and ', @number2, ' is ', @result)

END