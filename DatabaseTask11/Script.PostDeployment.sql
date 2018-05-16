/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/





IF '$(LoadTestData)' = 'true'

BEGIN

DELETE FROM "Log";
Delete from Account;

INSERT INTO Account (AcctNo, Fname, Lname, CreditLimit, Balance)
VALUES 
(1, 'James', 'Smith', -300.00, 50.00),
(2, 'John', 'Smith', -500.00, 50.00),
(3, 'Jimmy', 'Smith', -900.00, 50.00);

INSERT INTO "Log" (OrigAcct, LogDateTime, RecAcct, Amount)
VALUES
(1, '2018-05-16 16:00:00', 2, 100.00),
(2, '2018-05-16 14:00:00', 1, 100.00),
(3, '2018-05-16 13:00:00', 2, 100.00);

END;

