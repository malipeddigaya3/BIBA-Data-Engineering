---------------------------------------------procedures
select * from student;


CREATE PROCEDURE Selectallstudents
AS
SELECT * FROM student
GO;

drop procedure selectallstudents;
exec selectallstudents;

CREATE PROCEDURE Selectallstudent @mark int
AS
SELECT * FROM student
GO;
drop procedure selectallstudent;
CREATE PROCEDURE Selectallstudent @mark int
AS
SELECT * FROM student where mark=@mark
Go

exec selectallstudent @mark=20;

select * from customers;
------procedures
create procedure selectallcustomers
as
select * from customers
go
exec selectallcustomers;

create procedure customerage @age int
as 
select * from customers where age=@age
go
exec customerage @age=25;


create procedure customeragensal @age int,@salary int
as
select * from customers where age=@age and salary=@salary
go
exec customeragensal @age=25,@salary=6500;


create procedure customerid
as
select * from customers where id between 1 and 5
go

exec customerid;

create procedure na1 @id int
as 
select * from customers where id=@id
go
exec na1 @id =1;













use pet_adoption;
CREATE TABLE
SalesList
(SalesMonth NVARCHAR(20), SalesQuartes  VARCHAR(5), SalesYear  SMALLINT, SalesTotal MONEY)
GO
INSERT INTO  SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'March','Q1',2019,60)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'March','Q1',2020,50)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'May','Q2',2019,30)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'July','Q3',2020,10)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'November','Q4',2019,120)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'October','Q4',2019,150)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'November','Q4',2019,180)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'November','Q4',2020,120)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'July','Q3',2019,160)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'March','Q1',2020,170)
GO
SELECT  * FROM SalesList

---rollup()
--with one parameter
select salesyear,sum(salestotal) as total
from saleslist
group by rollup(salesyear);
----with two parameters
select salesyear,salesquartes,sum(salestotal) as total
from saleslist 
group by rollup(salesyear,salesquartes);

---with three paramaters
select salesyear,salesquartes,salesmonth,sum(salestotal) as total
from saleslist
group by rollup(salesyear,salesquartes,salesmonth);

-------grouping
select salesyear,sum(salestotal) as total ,GROUPING(salesyear) As yeargroup
from saleslist 
group by rollup(salesyear);


SELECT SalesYear,
SalesQuartes, 
SUM(SalesTotal) AS SalesTotal ,
GROUPING(SalesQuartes) AS SalesQuarterGrp,
GROUPING(SalesYear) AS SYearGrp
FROM SalesList
GROUP BY ROLLUP(SalesYear, SalesQuartes);


SELECT 
CASE 
WHEN GROUPING(SalesQuartes)=1 AND GROUPING(SalesYear)=0
THEN 'SubTotal'
WHEN GROUPING(SalesQuartes)=1 AND GROUPING(SalesYear)=1
THEN 
'Grand Total'
ELSE
CAST(SalesYear AS varchar(10))
END 
AS SalesYear,
SalesQuartes,
SUM(SalesTotal) AS SalesTotal 
FROM SalesList
GROUP BY ROLLUP(SalesYear,SalesQuartes);

WITH CTE AS (
SELECT SalesMonth,SalesTotal , 
ROW_NUMBER() OVER(ORDER BY NEWID())
AS RowNumber FROM SalesList 
)
 
SELECT 
    RowNumber ,SalesMonth,SUM(SalesTotal) AS SalesTotal 
FROM CTE 
GROUP BY ROLLUP(SalesMonth, RowNumber);


WITH CTE AS (
SELECT SalesMonth,SalesTotal , 
ROW_NUMBER() OVER(ORDER BY NEWID())
AS RowNumber FROM SalesList 
)
 
SELECT  
CASE WHEN GROUPING(RowNumber) =1 THEN 'SubTotal'
ELSE
 
    SalesMonth
    END AS SalesMonth,SUM(SalesTotal) AS SalesTotal 
FROM CTE 
GROUP BY ROLLUP(SalesMonth, RowNumber);



select salesyear,