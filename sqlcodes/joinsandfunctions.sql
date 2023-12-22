/*joins*/
use pet_adoption;
select * from employee;
create table student(roll_no int,name char(20),marks int);
insert into student(roll_no ,name,marks)values (1,'tony',20);
insert into student(roll_no, name,marks)values (2,'lee',10);
insert into student(roll_no,name,marks)values (3,'john',30);
insert into student(roll_no,name, marks)values (4,'n',30);
insert into student(roll_no,name,marks)values (5,'jn',30);
select * from student;
select * from course;
create table course(courseid int,roll_no int);
insert into course(courseid,roll_no) values (1,1);
insert into course(courseid,roll_no) values (1,2);
insert into course(courseid,roll_no) values (2,3);
insert into course(courseid,roll_no) values (2,4);
insert into course(courseid,roll_no) values (3,5);
select * from course;
/*inner join*/
select student.roll_no,student.name,student.mark,course.courseid
from student
inner join course
on student.roll_no=course.roll_no;

select student.name,course.courseid 
from student
inner join course
on student.roll_no=course.roll_no;
insert into student(roll_no,name, marks)values (6,'now',30);
insert into student(roll_no,name,marks)values (7,'finn',30);
select * from student;
select * from course;

/*left join*/
select student.roll_no,student.name,student.mark,course.courseid
from student
left join course
on student.roll_no=course.roll_no;

select student.name,course.courseid 
from student
left join course
on student.roll_no=course.roll_no;

insert into course(courseid,roll_no) values (2,8);
insert into course(courseid,roll_no) values (1,9);
select * from course;
/*right join*/
select student.roll_no,student.name,student.mark,course.courseid
from student
right join course
on student.roll_no=course.roll_no;

select student.name,course.courseid 
from student
right join course
on student.roll_no=course.roll_no;

/*full join*/
select student.roll_no,student.name,student.marks,course.courseid
from student
full join course
on student.roll_no=course.roll_no;

select student.roll_no,student.name,student.mark,course.courseid
from student
cross join course;


/*self join*/
select * from student;
select a.name as studentname,b.name as friend 
from student as a join student as b
on a.roll_no=b.roll_no;

select * from student;

select * from student natural join course;




/*string functions*/
SELECT ascii ( 'AB');
SELECT char (66);
SELECT len ( 'WIDESKILLS') as length;
SELECT lower ( 'JOHN' );
SELECT REPLACE ( 'country', 'y', 'ies' );
SELECT reverse ( 'PATH');
SELECT str (134.56, 6, 1);
SELECT upper ( 'Peter') as uppercase;
/*date functions*/
select getdate();
select dateadd(month,2,'2023-05-11');
SELECT datediff ( year, convert (datetime, '2006-05-06'), convert ( datetime, '2009-01-01'));
SELECT datepart (mm, '2008-01-01');
SELECT day ( '2010-03-21');
SELECT month ('2007-04-03');
SELECT year ( '2011-04-17');
/*mathematical functions*/
SELECT abs (-77);
SELECT sin(1.5);
SELECT ceiling (14.45);
SELECT exp (4.5);
SELECT floor (15.55);
SELECT log (5.4);
select round(23.567,1);
select cast(10 as varchar(10));/*converts a datatype into another*/
select iif(4>3,'yes','no');/*if function*/
SELECT Concat('apple', 'banana', 'cherry'); 

/*rank functions*/
select * from student;
select roll_no,name,mark,
ROW_NUMBER() over(order by mark desc) as rank
from student;/*gives consecutive number of ranks*/
select roll_no,name,mark,
rank() over(order by mark desc) as rank 
from student;/*duplicates rank number gets jumped*/
select roll_no,name,mark,
dense_rank() over(order by mark desc) as rank
from student;/*duplicates have same ranks*/
select roll_no,name,mark,
NTILE(4) over ( order by mark desc ) as rank
from student where mark>10; /*groups the rank based on arguments given*/
/*system functions*/
SELECT suser_id( 'sa') as SID;
SELECT user_id ('Sam') as USERID;
SELECT db_name(16) as Databasename;
select HOST_ID() as 'HOSTID';
/*aggregate functions*/
select avg(mark)as average from student;
select count(roll_no) as num ,mark from student group by mark;
select min(mark) from student;
select max(mark) from student;
select sum(mark) from student;
/*group by*/
select count(roll_no) as num ,marks from student group by marks having marks>10 ;
exec sp_rename 'student.marks','mark','column';/*rename a column in the table*/



select * from student;
select * from course;
/*equi join*/
select student.roll_no,student.name,course.courseid
from student,course
where student.roll_no=course.roll_no;
/*non equi join*/
select student.roll_no,student.name,course.courseid
from student,course
where student.roll_no>course.roll_no
order by student.roll_no;



