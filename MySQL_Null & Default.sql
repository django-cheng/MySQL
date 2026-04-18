-- null & default
desc employee;
select * from employee;

-- null
insert into employee(employee_id, employee_name)
values
(10, 'Tom');

create table cars(
car_brand varchar(50) not null,
car_color varchar(50) not null,
car_sale_price int
);

desc cars;

insert into cars(car_brand, car_sale_price)
value('Luxgen', 490000);

show warnings;
# Field 'car_color' doesn't have a default value
# Column count doesn't match value count at row 2

select * from cars;

insert into cars(car_brand, car_color, car_sale_price)
value
('Luxgen', 'gold', 400000),
('Luxgen', 'black', null);

-- Default
create table cars_02(
car_brand varchar(50) not null default '不知道',
car_color varchar(50) not null default 'unknown',
car_sale_price int default 50000
);

desc cars_02;

insert into cars_02()
value
();

select * from cars_02;

insert into cars_02(car_color)
value
('black');

-- null with default
create table cars_03(
car_brand varchar(50) default '不知道',
car_color varchar(50) default 'unknown',
car_sale_price int default 50000
);

desc cars_03;

#1
insert into cars_03(car_brand, car_color, car_sale_price)
value
(null, 'black', null);

#2
insert into cars_03(car_color)
value
('black');

select * from cars_03;

-- practice #3 --
insert into cars_03(car_brand, car_color)
value
('Toyota', null),
('Honda', null);

insert into cars_03(car_brand, car_color, car_sale_price)
value
(null, 'black', null),
(default, 'black', default),
('Toyata', null, default),
('Honda', null, default);

select * from cars_03;
-- practice #3 --


