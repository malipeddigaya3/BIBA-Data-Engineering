
/*any,all*/


select * from animals;
select name,gender from animals where name =all(select name from animals where color='Brown');

select name from animals where name =any(select name from animals where color='Brown');
select * from student order by mark;
insert into student (roll_no,name,mark)values(11,'maya',40);
update student set mark=0 where mark=40;
/*all*/
select * from student where mark<all
(select mark from student where mark>10)order by mark;
/*in subquery it returns (20,30) ,so the marks should be less than 20 and 30*/

/*any*/
select * from student where mark<any
(select mark from student where mark>10);
/* subquery returns 20,30 ,so the marks should be less than 20 or 30*/

/*exists*/
select * from student where exists
(select mark from student where mark>40);/*here subquery doesnt return any record so/it doent exists so nothing gets returned*/

select * from student where exists
(select mark from student where mark=0);/*here subquery return a row so all the asked rows in the outer query gets displayed*/

/*union,union all,intersect,except*/
select * from demo2;
select * from demo4;
insert into demo2(id,age)values(5,24);
insert into demo4(id,age)values(5,24);
delete from demo2 where id=1 and age=20;
insert into demo2(id,age)values(1,20);
/*union -combines data from two tables and eliminate duplicate rows*/
select * from demo2 union select * from demo4;
/*union all-combines data from 2 tables and includes the duplicate rows too*/
select * from demo2 union all select * from demo4;
/*intersect-returns the common rows from 2 tables*/
select * from demo2 intersect select * from demo4;
/*except-returns the left table rows except the common rows*/
select * from demo2 except select * from demo4;
create table studetails(roll int,name varchar(20),location varchar(20),phone int);
create table secdetails(roll int,name varchar(20),section varchar(20));
insert into studetails(roll,name,location,phone)values(101,'ram','Chennai',2312);
insert into studetails(roll,name,location,phone)values(102,'raj','Combatore',232);
insert into studetails(roll,name,location,phone)values(103,'sasi','madurai',22);
insert into studetails(roll,name,location,phone)values(104,'ravi','salem',23);

insert into secdetails(roll,name,section)values(104,'ravi','a');
insert into secdetails(roll,name,section)values(105,'sumati','b');
insert into secdetails(roll,name,section)values(102,'raj','a');
delete from studetails where roll=103;
select * from studetails;
select * from secdetails;
/*display name,location,section of students whose section is a*/
select roll,name,location,phone from studetails where roll in (select roll from secdetails where section='a');
/*return roll,name,location,phone,sec*/
select a.roll,a.name,b.section,a.location,a.phone 
from studetails as a
full join secdetails as b
on a.roll=b.roll;
/*delete from studetails whose roll number are same in secdetails*/
delete from studetails where roll in (select roll from secdetails);

select name from studetails where location in (select location from studetails where location like 'C%');


create table emp(empno int,ename varchar(20),job varchar(20),sal int,deptno int);
create table dept(deptno int,dname varchar(20),loc varchar(20));
insert into emp(empno,ename,job,sal,deptno)values(1,'smith','clerk',800,20);
insert into emp(empno,ename,job,sal,deptno)values(2,'allen','salesman',800,30);
insert into emp(empno,ename,job,sal,deptno)values(3,'jones','manager',300,20);
insert into emp(empno,ename,job,sal,deptno)values(4,'adam','salesman',650,20);
insert into emp(empno,ename,job,sal,deptno)values(5,'james','clerk',100,30);
insert into emp(empno,ename,job,sal,deptno)values(6,'miller','analyst',800,10);
insert into emp(empno,ename,job,sal,deptno)values(7,'king','manager',80,10);
select * from emp;
select * from dept;
insert into dept(deptno,dname,loc)values (10,'account','newyork');
insert into dept(deptno,dname,loc)values (20,'research','nas');
insert into dept(deptno,dname,loc)values (30,'sales','york');
insert into dept(deptno,dname,loc)values (40,'operation','boston');
select * from dept;
/*nested subquery*/
select ename,job,sal from emp where deptno=20 and job in 
(select job from emp where deptno=
(select deptno from dept where dname='sales'));


select deptno,ename,sal from emp e where sal >
(select avg(e2.sal) from emp e2 where e2.deptno=e.deptno);

select avg(sal) from emp;

select deptno,ename,sal from emp where sal >(select avg(sal) from emp);

with avg_salary as (select avg(sal) as avg_sal from emp)
select * from emp
inner join avg_salary on sal >avg_sal;

select * from emp where ename in( select ename from emp  where emp.deptno=dept.deptno); 
