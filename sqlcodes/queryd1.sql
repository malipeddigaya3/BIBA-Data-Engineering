create database day_1
use day_1
create table customer_master(CUSTOMER_NUMBER varchar(30) primary key,
FIRSTNAME varchar(50) not null,
middlename varchar(50) not null,
lastname varchar(50) not null,
CUSTOMER_CITY varchar(50) not null,
CUSTOMER_CONTACT_NO varchar(20) not null,
occupation varchar(30) not null,
CUSTOMER_DATE_OF_BIRTH date not null)

insert into customer_master values('C00001','RAMESH','CHANDRA','SHARMA','DELHI',9543198345,'SERVICE','1976-12-06')
select * from customer_master

select CUSTOMER_CITY,count(CUSTOMER_NUMBER) from customer_master group by CUSTOMER_CITY
select distinct CUSTOMER_CITY from customer_master
select occupation,count(CUSTOMER_NUMBER) from customer_master group by occupation
select * from customer_master order by FIRSTNAME
select * from customer_master order by occupation desc,FIRSTNAME
select * from customer_master where middlename is null
