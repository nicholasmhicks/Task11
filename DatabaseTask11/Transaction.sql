CREATE PROCEDURE AccountTransaction (@FromAccount INT, @ToAccount INT, @Amount MONEY)
AS
BEGIN
    BEGIN TRANSACTION;
    SAVE TRANSACTION MySavePoint;

    BEGIN TRY

    UPDATE dbo.Account
    
	SET Balance = Balance + @Amount

	WHERE (AcctNo = @ToAccount);

	INSERT INTO [dbo].[Log]
	([OrigAcct],[LogDateTime],[RecAcct],[Amount])

	VALUES	(@FromAccount,GETDATE(),@ToAccount,@Amount);

    END TRY

    BEGIN CATCH
        IF @@TRANCOUNT > 0
        BEGIN
            ROLLBACK TRANSACTION MySavePoint;
        END
    END CATCH

    COMMIT TRANSACTION 
END;
