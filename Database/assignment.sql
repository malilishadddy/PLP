-- creating database 
create database Universitydb;
-- creating table and inserting columns
create table Students(
  StudentsID int Primary Key,
  FirstName varchar (50),
  LastName varchar (50),
  Age int ,
  Major varchar (50)
);
-- inserting values into the columns
insert into  Students values (24,"James","John",24,"Music");
insert into  Students values (22"Jane","Kembel",24,"Software Engineering");
insert into  Students values (20,"Anne","Mary",23,"Education");
insert into  Students values (21,"Andrew","Onana",18,"Philosophy");
insert into  Students values (23,"Samantha","Brightney",22,"Mathematics");
-- altering the table by adding an extra column
alter table Students 
add GPA decimal (5,2);
-- updating the gpa with the existing record
update Students 
set GPA = 2.4
where StudentsID = 24;
update Students 
set GPA = 3.4
where StudentsID = 22;
update Students 
set GPA = 2.0
where StudentsID = 21;
update Students 
set GPA = 3.0
where StudentsID = 20;
update Students 
set GPA = 3.5
where StudentsID = 23;
-- renaming the table
alter table Students
rename to EnrolledStudents
-- creating a new table 
create table Courses(
    CourseID int Primary Key,
    CourseName varchar (100),
    Insructor varchar (100),
    Credits int
-- );
-- insering values into the new table columns
insert into Courses values (254,"Information Technology","Shadrack James",10);
insert into Courses values (265,"Software engineering","Shadrack James",15);
insert into Courses values (277,"Building Technology","Shadrack James",8);
insert into Courses values (300,"General Sciences","Shadrack James",5);
-- droping table
drop table EnrolledStudents;
