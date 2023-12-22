use pet_adoption;
CREATE TABLE CUSTOMERS (
   ID INT NOT NULL,
   NAME VARCHAR (20) NOT NULL,
   AGE INT NOT NULL,
   ADDRESS CHAR (25),
   SALARY DECIMAL (18, 2),
   PRIMARY KEY (ID)
);
INSERT INTO CUSTOMERS VALUES 
(1, 'Ramesh', 32, 'Ahmedabad', 2000.00),
(2, 'Khilan', 25, 'Delhi', 1500.00),
(3, 'Kaushik', 32, 'Kota', 2000.00),
(4, 'Chaitali', 25, 'Mumbai', 6500.00),
(5, 'Hardik', 27, 'Bhopal', 8500.00),
(6, 'Komal', 27, 'Hyderabad', 4500.00),
(7, 'Muffy', 27, 'Indore', 10000.00),
(8,'jafra',25,'Kota',1000.00);
begin transaction 
delete from customers where age =25;
commit;
begin transaction
delete from customers where age=22;
rollback;
begin transaction
delete from customers where age=22;
save transaction s1
select * from customers;
delete from customers where age=25;
save transaction s2
delete from customers where age=24;
save transaction s3
rollback transaction s2;
select * from customers;
delete from CUSTOMERS;

select age,count(id) as num from customers group by age having age>25;
/*integrity constraints*/
/*default constraint*/
Create table Demo(Id int,name varchar(50),Salary int default 15000);
insert into Demo(Id,name)values(1,'John');
insert into Demo(Id,name)values(2,'deer');
insert into Demo(Id,name)values(3,'shri');
insert into Demo(Id,name)values(4,'kat');
insert into Demo(Id,name)values(5,'John');
select * from Demo;
/*unique constraint*/
Create table demo1(id int unique,name varchar(50),price int unique);
insert into demo1(id,name,price)values(1,'John',10);
insert into demo1(id,name,price)values(2,'deer',10);
insert into demo1(id,name,price)values(3,'Jo',20);
insert into demo1(id,name,price)values(4,'hn',30);
select * from demo1;
/* not null constraint*/
Create table Demo2(id int not null , age int);
insert into Demo2(id,age)values(1,20);
insert into Demo2(id,age)values(1,20);
insert into Demo2(id,age)values(2,20);
select * from Demo2;
/* check constraint*/
Create table demo4(id int, Age int check(Age between 18 and 24));
insert into demo4(id,Age)values (1,19);
insert into demo4(id,Age)values (2,25);/*doesnt satisfy check constraint*/
insert into demo4(id,Age)values (3,19);
insert into demo4(id,Age)values (4,20);
select * from demo4;

/*primary key*/
Create table demo5(id int primary key, salary money);
insert into demo5(id,salary)values(1,100);
insert into demo5(id,salary)values(2,100);
insert into demo5(id,salary)values(3,300);
insert into demo5(id,salary)values(4,200);
select * from demo5;
insert into demo5(id,salary)values(1,500);

/*composite primary key */
create table demo6(id int,name varchar(50),primary key(id,name));
insert into demo6(id,name)values (1,'john');
insert into demo6(id,name)values (1,'prit');
insert into demo6(id,name)values (2,'swis');
insert into demo6(id,name)values (5,'lee');
select * from demo6;
insert into demo6(id,name)values (1,'john');













/*foreign key constraint*/
Create table employee(id int primary key,name varchar(50),age int);
Create table company(email varchar(50),
                     address varchar(50),
					 id int primary key ,
					 foreign key (id) references employee(id));













select * from demo2;
select * from demo4;

select * from demo2 union select * from demo4;
select * from demo2 union all select * from demo4;









