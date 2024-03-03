use B22DB
go
drop table Student
go
create table Trainer
(
Id int primary key,
Name varchar(50),
Experience int
)
go
insert into Trainer values (1, 'vikul', 13), (2, 'usha', 2)
go
select * from Trainer
go
create table Student
(
RollNumber int primary key,
Name varchar(50),
City varchar(50),
TrainerId int
)
go
insert into Student values (1,'ajay', 'pune', 1), (2, 'ganesh', 'mumbai', 1)
insert into Student values (3, 'vishal', 'pune', 2)
insert into Student values (4, 'bahu', 'pune', 20)
go
select * from Trainer
select * from Student

go
drop table Student
go
-- create foreign key
create table Student
(
RollNumber int primary key,
Name varchar(50),
City varchar(50),
TrainerId int foreign key references Trainer(Id)
)
go
insert into Student values (1,'ajay', 'pune', 1), (2, 'ganesh', 'mumbai', 1)
insert into Student values (3, 'vishal', 'pune', 2)
insert into Student values (4, 'bahu', 'pune', null)
go
select * from Trainer
select * from Student
go
-- what if we try to delete records from Student table
delete from Student where RollNumber = 3

-- what if we try to delete records from Trainer table
delete from Trainer where Id = 1
go
-- set null
drop table Student
go
create table Student
(
RollNumber int primary key,
Name varchar(50),
City varchar(50),
TrainerId int foreign key references Trainer(Id) on delete set null
)
go
insert into Student values (1,'ajay', 'pune', 1), (2, 'ganesh', 'mumbai', 1)
insert into Student values (3, 'vishal', 'pune', 2)
insert into Student values (4, 'bahu', 'pune', null)
go
select * from Trainer
select * from Student
go
delete from Trainer where Id = 1
go

drop table Student
go
-- set default
insert into Trainer values (1,'vikul',13)

create table Student
(
RollNumber int primary key,
Name varchar(50),
City varchar(50),
TrainerId int default 2 foreign key references Trainer(Id) on delete set default
)
go
insert into Student values (1,'ajay', 'pune', 1), (2, 'ganesh', 'mumbai', 1)
insert into Student values (3, 'vishal', 'pune', 2)
insert into Student values (4, 'bahu', 'pune', null)
go
select * from Trainer
select * from Student
go
delete from Trainer where Id = 1
go
drop table Student
go
-- cascade
insert into Trainer values (1,'vikul',13)

create table Student
(
RollNumber int primary key,
Name varchar(50),
City varchar(50),
TrainerId int foreign key references Trainer(Id) on delete cascade
)
go
insert into Student values (1,'ajay', 'pune', 1), (2, 'ganesh', 'mumbai', 1)
insert into Student values (3, 'vishal', 'pune', 2)
insert into Student values (4, 'bahu', 'pune', null)
go
select * from Trainer
select * from Student
go
delete from Trainer where Id = 1
go
drop table Student
drop table Trainer
go
-- many to many relation
create table Teacher
(
Id int primary key,
Name varchar(50),
Specilizaiton varchar(50)
)
go
insert into Teacher values 
(1, 'anil', 'marathi'), 
(2, 'rahul', 'Mathematics'), 
(3, 'atul', 'History')
go
create table Standard
(
Id int primary key,
Name varchar(50),
Strength int
)
go
insert into Standard values 
(1, 'Standard 1', 20), 
(2, 'Standard 2', 25)
go
select * from Teacher
select * from Standard
go
create table TeacherStandardAssignment
(
AssignmentId int primary key,
TeacherId int foreign key references Teacher (Id),
StandardId int foreign key references Standard (Id)
)
go 
insert into TeacherStandardAssignment values
(1, 1, 1), (2, 1, 2)
insert into TeacherStandardAssignment values (3, 2, 1)
go
select * from Teacher
select * from Standard
select * from TeacherStandardAssignment
