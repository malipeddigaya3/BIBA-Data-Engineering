CREATE DATABASE pet_adoption;
USE pet_adoption;
CREATE TABLE animals (id int NOT NULL, name varchar(20), breed varchar(20), color varchar(20), gender varchar(20) status INTEGER);
INSERT INTO animals (id, name, breed, color, gender, status) VALUES ('1', 'Bellyflop', 'Beagle', 'Brown', 'Male', 0);
INSERT INTO animals (id, name, breed, color, gender, status) VALUES ('2','Bellyflop', 'Beagle', 'Brown', 'Male', 0);
INSERT INTO animals (id, name, breed, color, gender, status) VALUES ('3' ,'Snowy', 'Husky', 'White', 'Female', 0);
INSERT INTO animals (id, name, breed, color, gender, status) VALUES ('4', 'Princess', 'Pomeranian', 'Black', 'Female', 0);
INSERT INTO animals (id, name, breed, color, gender, status) VALUES ('5', 'Cricket', 'Chihuahua', 'Brown', 'Male', 0);
INSERT INTO animals (id, name, breed, color, gender, status) VALUES ('6', 'Princess', 'Poodle', 'Purple', 'Female', 0);
INSERT INTO animals (id, name, breed, color, gender, status) VALUES ('7', 'Spot', 'Dalmation', 'Black and White', 'Male', 0);
SELECT * FROM animals;
SELECT breed FROM animals;
SELECT name FROM animals WHERE gender = 'Female';
UPDATE animals SET color = 'Brown' WHERE name = 'Princess';
SELECT id FROM animals WHERE status = 0;
alter table animals add species varchar(20);/*add a column to the table*/
update animals set species ='Dog';/*insert values into newly added column*/
update animals set species ='Cat' where id between '8' and '10';
alter table animals add shelter varchar(20);/*add a new column */
alter table animals alter column shelter int;/*modifying the datatype of already existing column*/
INSERT INTO animals (id, name, species, breed, color, gender, status) VALUES ('8', 'Meowmix', 'Cat', 'Munchkin', 'Yellow', 'Female', 0);
INSERT INTO animals (id, name, species, breed, color, gender, status) VALUES ('9', 'Ash', 'Cat', 'Persian', 'Gray', 'Female', 0);
INSERT INTO animals (id, name, species, breed, color, gender, status) VALUES ('10', 'Tiger', 'Cat', 'Bengal', 'Brown', 'Male', 0);
Select *from sys.tables; /*to view all the tables exists in the database*/

CREATE TABLE shelters (id INTEGER, name varchar(20), location varchar(20));
INSERT INTO shelters (id, name, location) VALUES (1, 'Animals 4 Homes', 'Red City');
alter table animals drop shelter ;/*deleting a coulmn from the table*/

UPDATE animals SET shelter = 1;
INSERT INTO shelters (id, name, location) VALUES (2, 'Adopt A Buddy', 'Green Town');
INSERT INTO shelters (id, name, location) VALUES (3, 'Fluffy Animals', 'Blue Hills');
select * from shelters;

select getdate();
CREATE TABLE adoptions (animal_id int NOT NULL, name varchar(20), contact varchar(20) , dates date);
drop table adoptions;
INSERT INTO adoptions (animal_id, name, contact, dates) VALUES ('1', 'Pinocchio', 'realboycockroam', CURRENT_TIMESTAMP);
INSERT INTO adoptions (animal_id, name, contact, dates) VALUES ('1', 'Ella', 'ellacockroachlabscom',CURRENT_TIMESTAMP);
select * from adoptions;
SELECT * FROM adoptions ORDER BY dates DESC;

SELECT * FROM animals WHERE status = 0;

select distinct name from animals;

select * from animals where gender='Male';

select * from animals where gender='Male' and species='Dog';


/*operators*/
select * from animals where color='Brown' and gender='Male';
select * from animals where id between 1 and  10;
select * from animals where color in ('Gray','Yellow');
select * from animals where id=1 or id=5;
select * from animals where name like 'C%';
select * from animals where name like '%p';
select * from animals where name like '__lly%';
select * from animals;
select name,gender from animals where name =all(select name from animals where color='Brown');

select name from animals where name =any(select name from animals where color='Brown');
select * from student order by mark;
insert into student (roll_no,name,mark)values(11,'maya',40);
update student set mark=0 where mark=40;
select * from student where mark<all
(select mark from student where mark>10)order by mark;
/*in subquery it returns (20,30) ,so the marks should be less than 20 and 30*/
select * from student where mark<any
(select mark from student where mark>10);
/* subquery returns 20,30 ,so the marks should be less than 20 or 30*/

select count(id) as num,species from animals group by species;
select count(id) as num,gender from animals group by gender having count(id)>7;
select * from animals;
select distinct name,breed,color,gender,status,species,shelly from animals;
select top 3 * from animals;
select sum(id) from animals;
alter table animals rename to animal;
create table ani as select distinct id,name,breed,color,gender,species from animals;
select * from animals;
exec sp_rename 'animals.shel','shelly','column';
INSERT INTO adoptions (animal_id, name, contact, dates) VALUES ('1', 'Ella', 'ellacockroachlabscom',CURRENT_TIMESTAMP),('2', 'la', 'acockroachlabscom',CURRENT_TIMESTAMP);
select * from adoptions;
select distinct id,name,breed from animals;
select distinct name from animals;
