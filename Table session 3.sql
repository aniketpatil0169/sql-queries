use xyz

use xyz
go
create table Student
(
RollNumber int,
Name varchar(50),
Age int,
IsConfirmed bit
)
go
-- inserting records
insert into Student (RollNumber, Name, Age, IsConfirmed) 
values (1, 'ajay', 22, 1)

-- selecting records
select RollNumber, Name, Age, IsConfirmed from Student
select * from Student
select RollNumber, Name, IsConfirmed from Student

-- inserting record other way
insert into Student values (2, 'ganesh', 23, 1)

-- edit or update records
update Student set IsConfirmed = 0

select * from Student

update Student set IsConfirmed = 1 where RollNumber = 1

update Student 
set IsConfirmed = 0, 
Name = 'Ajay Rathod',
Age = 230 
where RollNumber = 1

-- delete record
delete from Student -- deletes all records
delete from Student where RollNumber = 1

select * from Student

-- multiple records insert
insert into Student values 
(1, 'ajay', 22, 1),
(3, 'vishal', 25, 0),
(4, 'shital', 24, 1)

select * from Student

-- renaming table
exec sp_rename 'Student', 'xyzStudent'

select * from Student

-- deleting table
drop table Student

go
create table Studentss
(
RollNumber int,
Name varchar(50),
Age int,
IsConfirmed bit
)
go 

-- adding a new column
alter table Student 
add Gender varchar(10)

alter table Student
alter column Name varchar(100)

alter table Student 
add [Email Address] varchar(100)
use xyz
go
create table Students
(
RollNumber int,
Name varchar(50),
Age int,
IsConfirmed bit
)
go
-- inserting records
insert into Students(RollNumber, Name, Age, IsConfirmed) 
values (1, 'ajay', 22, 1)

-- selecting records
select RollNumber, Name, Age, IsConfirmed from Student
select * from Student
select RollNumber, Name, IsConfirmed from Student

-- inserting record other way
insert into Student values (2, 'ganesh', 23, 1)

-- edit or update records
update Student set IsConfirmed = 0

select * from Student

update Student set IsConfirmed = 1 where RollNumber = 1

update Student 
set IsConfirmed = 0, 
Name = 'Ajay Rathod',
Age = 230 
where RollNumber = 1

-- delete record
delete from Student -- deletes all records
delete from Student where RollNumber = 1

select * from Student

-- multiple records insert
insert into Student values 
(1, 'ajay', 22, 1),
(3, 'vishal', 25, 0),
(4, 'shital', 24, 1)

select * from Student

-- renaming table
exec sp_rename 'Student', 'B22Student'

select * from B22Student

-- deleting table
drop table B22Student

go
create table Student
(
RollNumber int,
Name varchar(50),
Age int,
IsConfirmed bit
)
go 

-- adding a new column
alter table Student 
add Gender varchar(10)

alter table Student
alter column Name varchar(100)

alter table Student 
add [Email Address] varchar(100)
