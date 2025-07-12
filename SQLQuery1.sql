use CreditCardDB;
select COUNT(*) from Credit_Card_Details;

select COUNT(*) from Customer_Details;

BULK INSERT Credit_Card_Details FROM 'C:\Users\HP\Desktop\Credit Card Project\cc_add.csv'
WITH(
 FORMAT='CSV',
 FIRSTROW=2,
 FIELDTERMINATOR=',',
 ROWTERMINATOR='\n',
 CODEPAGE='65001',
 TABLOCK
);

BULK INSERT Customer_Details FROM 'C:\Users\HP\Desktop\Credit Card Project\cust_add.csv'
WITH(
 FORMAT='CSV',
 FIRSTROW=2,
 FIELDTERMINATOR=',',
 ROWTERMINATOR='\n',
 CODEPAGE='65001',
 TABLOCK
);