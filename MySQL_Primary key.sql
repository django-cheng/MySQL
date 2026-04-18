-- Primary Key
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