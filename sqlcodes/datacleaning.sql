use pet_adoption;
select * from customers;
insert into customers(id,name,age,address,salary)values(4,'Komal',22,'Hyderabad',4500.00);

---duplicate rows
SELECT name,
     COUNT(id) as count
FROM customers
GROUP BY name
HAVING count(id) >1;
---apply rownumber
select id,name,row_number()
over(partition by name order by id) as rn
from customers; 
select id,name,row_number()over(order by id)  from customers;
----now delete the row which have rn>1
delete from customers where id not in (select min(id) from customers group by name); 
select * from customers;

DELETE
FROM customers where id in 
(select id from
(SELECT id,ROW_NUMBER() OVER(PARTITION BY name order by id) AS rn
FROM customers)as subquery 
WHERE rn > 1);
select * from customers;
insert into customers(id,name,age,address,salary)values(8,'Komal',22,'Hyderabad',4500.00);
insert into customers(id,name,age,address,salary)values(9,'Komal',22,'Hyderabad',4500.00);
insert into customers(id,name,age,address,salary)values(6,'roshan',24,'Hyderabad',null);
insert into customers(id,name,age,address,salary)values(10,'bushan',25,null,2000.00);

-----null
----removing the rows which are null
insert into customers(id,name,age,address,salary)values(6,'roshan',24,'Hyderabad',null);
select * from customers where salary is null;
delete from customers where salary is null;
select * from customers;

-----update the null values with meaningful data
update customers set address =null where id=10;
update customers set address ='other' where address is null;
select * from customers;
----update all address to uppercase

update customers set address=upper(address);
select * from customers;
----coalesce-(to replace missing values with more replacable values)
SELECT salary, COALESCE(salary, 0.00) AS new_salary
FROM customers;

select * from customers;


