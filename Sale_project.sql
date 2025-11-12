CREATE SCHEMA ecom_analysis_db;

Use ecom_analysis_db;
Create table Salesdata (
    Order_ID int,
    Country VARCHAR (50),
    Order_Date date,
    Quantity int,
    Profit decimal
);

USE ecom_analysis_db;
ALTER TABLE SalesData
MODIFY COLUMN Order_ID VARCHAR(50);

Select * from ecom_analysis_db.salesdata Limit 10;


USE ecom_analysis_db;
SELECT
convert(Order_Date,CHAR(50)) AS Sale_date,
sum(Profit)as DailyRevenue,
sum(Quantity) As UnitsSold,
sum(Profit)/sum(Quantity) As Avg_Profit_Per_Unit
FROM 
SalesData
Group By 
Sale_date
Order By
Sale_date;

Use ecom_analysis_db;
select
country,
convert(Order_Date,CHAR(50)) AS Sale_date,
sum(profit) as Daily_profit,
sum(Quantity) as Daily_sale,
sum(profit) /sum(Quantity) As Profit_Per_Unit

From 
salesdata
Group By
country,
Sale_date
Order by
country,
Sale_date;

