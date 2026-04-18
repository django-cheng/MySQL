-- Primary Key
use my_database;

create table cars_04(
car_id int primary key,
car_brand varchar(50),
car_color varchar(50),
car_sale_price int
);

desc cars_04;

-- insert data
insert into cars_04(car_id, car_brand, car_color, car_sale_price)
value
(1, 'Luxgen', 'white', 300000);

select * from cars_04;

-- insert data one more time
insert into cars_04(car_id, car_brand, car_color, car_sale_price)
value
(1, 'Luxgen', 'white', 300000);

show warnings;
# Duplicate entry '1' for key 'cars_04.PRIMARY'

-- insert data with same car_id one more time
insert into cars_04(car_id, car_brand, car_color, car_sale_price)
value
(2, 'Luxgen', 'white', 300000);

-- insert data without car_id (primary key)
insert into cars_04(car_brand, car_color, car_sale_price)
value
('Luxgen', 'white', 300000);

show warnings;
# Field 'car_id' doesn't have a default value

-- auto increment
create table cars_05(
car_id int primary key auto_increment,
car_brand varchar(50),
car_color varchar(50),
car_sale_price int

);

desc cars_05;

-- 
insert into cars_05(car_brand, car_color, car_sale_price)
values('Luxgen', 'green', 150000);

select * from cars_05;

insert into cars_05(car_brand, car_color, car_sale_price)
values('Luxgen', 'green', 150000);

select * from cars_05;

-- auto increment interrupted
insert into cars_05(car_id, car_brand, car_color, car_sale_price)
values(5566, 'Luxgen', 'green', 150000);

select * from cars_05;

insert into cars_05(car_id, car_brand, car_color, car_sale_price)
values(5, 'Luxgen', 'green', 150000);

select * from cars_05;

-- auto increment larger than previous
insert into cars_05(car_id, car_brand, car_color, car_sale_price)
values(6666, 'Luxgen', 'green', 150000);

select * from cars_05;

-- test
insert into cars_05(car_brand, car_color, car_sale_price)
values('Luxgen', 'green', 150000);

select * from cars_05;

alter table cars_05 auto_increment = 6;

insert into cars_05(car_brand, car_color, car_sale_price)
values('Luxgen', 'green', 150000);

select * from cars_05;
#6668

-- auto increment customized
create table cars_06(
car_id int primary key auto_increment,
car_brand varchar(50),
car_color varchar(50),
car_sale_price int
);

alter table cars_06 auto_increment = 101;

insert into cars_06(car_brand, car_color, car_sale_price)
values('Luxgen', 'red', 120000);

select * from cars_06;
#101-103

-- unique key
create table user_account(
user_id int primary key auto_increment,
user_name varchar(100) not null unique,
user_password varchar(100) not null
);

desc user_account;
-- 

insert into user_account(user_name, user_password)
values('iloveLuxgen', '5566');

select * from user_account;

insert into user_account(user_name, user_password)
values('ihateLuxgen', '5566');

select * from user_account;

-- pracetice #3 --
create table my_product(
product_id int primary key auto_increment,
product_name varchar(100),
product_price int
);

alter table my_product auto_increment = 21;

desc my_product;

insert into my_product(product_name, product_price)
values('Luxgen', 100000),
('Honda', 200000),
('Nissan', 300000),
('Toyota', 150000),
('Subaru', 250000);

select * from my_product;
-- practice #3 --
