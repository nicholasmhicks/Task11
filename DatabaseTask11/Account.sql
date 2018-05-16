CREATE TABLE [dbo].[Account]
(
	[AcctNo] INT NOT NULL PRIMARY KEY,
	[Fname] NVARCHAR(50) NOT NULL,
	[Lname] NVARCHAR(50) NOT NULL ,
	[CreditLimit] MONEY,
	[Balance] MONEY,
	CONSTRAINT FNAME_LASTNAME UNIQUE (Fname,Lname),
    CONSTRAINT Balance_check Check (Balance > CreditLimit),
    CONSTRAINT CreditCheck  Check (CreditLimit < 0)
);
