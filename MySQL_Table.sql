-- table
use my_database;

-- create table
create table members(
member_ID int,
member_Name varchar(100),
member_Gender varchar(20), 
member_Age int
);

-- check table settings
show columns from members;
describe members;
desc members;

-- database transfer
use world;
desc country;
use my_database;

-- delete table
#drop table members;

-- practice #1 --
create table player_02(
player_id int,
player_name varchar(100),
player_age int,
player_salary int,
player_team varchar(100)
);

desc player_02;

drop table player_02;
-- practice #1 --


-- insert into data
insert into members(member_ID, member_Name, member_Gender, member_Age)
values(1, 'Abigail', 'Female', 15);

-- check table contaents
select * from members;

-- insert without correct columns/values(int>varchar) count
insert into members(member_ID, member_Name, member_Gender, member_Age)
values(1, 'Abigail', 'Female', 'Female');

-- insert without correct columns/values(varchar>int) count
insert into members(member_ID, member_Name, member_Gender, member_Age)
values(1, 'Abigail', 15, 15);

-- insert without correct columns/values(varchar>int) count
insert into members(member_ID, member_Name, member_Gender)
values(1, 'Abigail', 'Female');

show warnings;
# Column count doesn't match value count at row 1
# Incorrect integer value: 'Female' for column 'member_Age' at row 1


insert into members(member_ID, member_Name, member_Gender, member_Age)
values
(2, 'Maria', 'Female', 21),
(3, 'Gregory', 'Male', 35),
(4, 'Scott', 'Male', 39);

-- practice #2 --
create table employee(
employee_id int,
employee_name varchar(100),
employee_age int,
employee_salary int,
employee_department varchar(100)
);

desc employee;

insert into employee(employee_id, employee_name, employee_age, employee_salary, employee_department)
values
(1, 'Tim', 39, 100000, 'Sales'),
(2, 'Danny', 27, 33000, 'Accounting'),
(3, 'Wilson', 33, 42000, 'Administration'),
(4, 'Elizabeth', 22, 29000, 'Accounting');

select * from employee;
-- practice #2 --

-- Can we neam our table in Chinese?
create table 員工(
employee_id int,
employee_name varchar(100),
員工年齡 int,
employee_salary int,
employee_department varchar(100)
);

desc 員工;

select * from 員工;
-- 