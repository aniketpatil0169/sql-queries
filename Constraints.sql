use B22DB
go
select * from Student
go
insert into Student values(1, 'ajay', 22, 1, 'male', 'a@a.com')
go
select * from Student
go
drop table Student
go
create table Student
(
RollNumber int,
Name varchar(50),
Gender varchar(10),
Email varchar(100),
Age int,
City varchar(20),
Course varchar(50)
)
go
insert into Student values (1, 'ajay', 'male', 'a@a.com',22, 'pune', 'dot net')
insert into Student values (2, 'ganesh', 'male', 'g@g.com',23, 'mumbai', 'dot net')
insert into Student values (2, 'vivek', 'male', 'a@v.com',22, 'pune', 'dot net')
insert into Student (RollNumber, Gender, Email, Age, City, Course)
values (3, 'male', 'a@a.com',22, 'pune', 'dot net')
go
select * from Student
go
drop table Student
go
create table Student
(
RollNumber int primary key,
Name varchar(50) not null,
Gender varchar(10),
Email varchar(100),
Age int,
City varchar(20),
Course varchar(50)
)
go
insert into Student values (1, 'ajay', 'male', 'a@a.com',22, 'pune', 'dot net')
insert into Student values (2, 'ganesh', 'male', 'g@g.com',23, 'mumbai', 'dot net')
insert into Student values (2, 'vivek', 'male', 'a@v.com',22, 'pune', 'dot net')
insert into Student (RollNumber, Name, Gender, Email, Age, City, Course)
values (3,'vishal', 'male', 'a@a.com',22, 'pune', 'dot net')
go
select * from Student
go
drop table Student
go
create table Student
(
RollNumber int primary key,
Name varchar(50) not null,
Gender varchar(10),
Email varchar(100) unique,
Age int,
City varchar(20),
Course varchar(50)
)
go
insert into Student values (1, 'ajay', 'male', 'a@a.com', 22,'pune','dot net')
insert into Student values (2, 'ganesh', 'male', 'g@g.com', 22,'pune','dot net')
insert into Student values (3, 'ashish', 'male', null, 22,'pune','dot net')
insert into Student values (null, 'vishal', 'male', 'v@v.com', 22,'pune','dot net')
go
select * from Student
go
drop table Student
go
create table Student
(
RollNumber int primary key,
Name varchar(50) not null,
Gender varchar(10),
Email varchar(100) unique,
Age int,
City varchar(20),
Course varchar(50) default 'dot net'
)
go
insert into Student (RollNumber, Name, Gender, Email, Age, City)
values (1, 'ajay', 'male', 'a@a.com', 22,'pune')

insert into Student (RollNumber, Name, Gender, Email, Age, City)
values (2, 'ganesh', 'male', 'g@g.com', 22,'pune')

insert into Student (RollNumber, Name, Gender, Email, Age, City, Course)
values (3, 'vishal', 'male', 'v@g.com', 22,'pune', 'discussion')

insert into Student (RollNumber, Name, Gender, Email, Age, City, Course)
values (4, 'bahu', 'male', 'b@g.com', 2200,'pune', 'discussion')
go
select * from Student
go
drop table Student
go
create table Student
(
RollNumber int primary key,
Name varchar(50) not null,
Gender varchar(10),
Email varchar(100) unique,
Age int check (Age >= 1 and Age <= 150),
City varchar(20),
Course varchar(50) default 'dot net'
)
go
insert into Student (RollNumber, Name, Gender, Email, Age, City)
values (1, 'ajay', 'male', 'a@a.com', 22,'pune')

insert into Student (RollNumber, Name, Gender, Email, Age, City)
values (2, 'ganesh', 'male', 'g@g.com', 22,'pune')

insert into Student (RollNumber, Name, Gender, Email, Age, City, Course)
values (3, 'vishal', 'male', 'v@g.com', 22,'pune', 'discussion')

insert into Student (RollNumber, Name, Gender, Email, Age, City, Course)
values (4, 'bahu', 'male', 'b@g.com', 150,'pune', 'discussion')

go
select * from Student
go

drop table Student
go
create table Student
(
RollNumber int,
Name varchar(50) not null,
Gender varchar(10),
Email varchar(100) unique,
Age int check (Age >= 1 and Age <= 150),
City varchar(20),
Course varchar(50) default 'dot net',
primary key (RollNumber, Name)
)
go
insert into Student (RollNumber, Name, Gender, Email, Age, City)
values (1, 'ajay', 'male', 'a@a.com', 22,'pune')

insert into Student (RollNumber, Name, Gender, Email, Age, City)
values (2, 'ajay', 'male', 'g@g.com', 22,'pune')

insert into Student (RollNumber, Name, Gender, Email, Age, City, Course)
values (1, 'vishal', 'male', 'v@g.com', 22,'pune', 'discussion')

insert into Student (RollNumber, Name, Gender, Email, Age, City, Course)
values (4, 'bahu', 'male', 'b@g.com', 150,'pune', 'discussion')
go
select * from Student
go
create table Customer
(
Id int primary key,
Name varchar(50),
Site varchar(50)
)
go
alter table Customer
add constraint df_Site_Name default 'Flipkart' for Site
go
insert into Customer (Id, Name) values (1, 'vishal')
go
select * from Customer
