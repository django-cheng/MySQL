-- Foreign Key


create database social_media_app;
use social_media_app;

create table users(
id int not null primary key auto_increment,
user_name varchar(200)
);

-- insert data
insert into users(user_name)
values
('Amanda'), ('Brian'), ('Cally'), ('Daniel'), ('Edward');

select * from users;

create table photos(
id int not null primary key auto_increment,
photo_url varchar(200),
user_id int,
foreign key (user_id) references users(id)
);

-- check table settings
desc photos;

-- insert data
insert into photos(photo_url, user_id)
values('https://123456.png', 1);

select * from users;
select * from photos;

insert into photos(photo_url, user_id)
values('https://7777777.png', 567);

show warnings;
# Cannot add or update a child row: a foreign key constraint fails (`social_media_app`.`photos`, CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`))

insert into photos(photo_url, user_id)
values('https://999999.png', null);

-- on delete restrict
# delete id = 1
delete from users where id = 1;

show warnings;
# Cannot delete or update a parent row: a foreign key constraint fails (`social_media_app`.`photos`, CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`))

drop table users;

show warnings;
# Cannot drop table 'users' referenced by a foreign key constraint 'photos_ibfk_1' on table 'photos'.

-- how to drop users  
drop table photos;
#delete id = 1 or drop table
delete from users where id = 1;
drop table users;

-- on delete cascade
create table photos_02(
id int primary key auto_increment,
photo_url varchar(200),
user_id int,
foreign key(user_id) references users(id) on delete cascade
);

desc photos_02;

insert into photos_02(photo_url, user_id)
values
('https://50vO5C2qYeQBPfvV.png', 1), ('https://9939P61ncLk0zT7l.png', 1),
('https://IDiRYiItNd5TC2h9.png', 2), ('https://LsrdCdC0dhjrjteg.png', 2),
('https://TKHN7Fnmeoepeahw.png', 3), ('https://ajG9183iiGYHoReq.png', 3),
('https://edJKy1VdLkZ8wv5W.png', 4), ('https://nbiLUDgfCwI4ubWE.png', 4),
('https://pfhednPD67rDnreQ.png', 5), ('https://uxlInX2oBS6YtBiG.png', 5);

select * from photos_02;
select * from users;

-- delete users_id = 3
delete from users where id = 3;

select * from users;
select * from photos_02;

-- on delete set null
create table photos_03(
id int primary key auto_increment,
photo_url varchar(200),
user_id int,
foreign key(user_id) references users(id) on delete set null
);

insert into photos_03(photo_url, user_id)
values
('https://50vO5C2qYeQBPfvV.png', 1), ('https://9939P61ncLk0zT7l.png', 1),
('https://IDiRYiItNd5TC2h9.png', 2), ('https://LsrdCdC0dhjrjteg.png', 2),
('https://pfhednPD67rDnreQ.png', 5), ('https://uxlInX2oBS6YtBiG.png', 5);

select * from users;
select * from photos_03;

-- delete users_id = 4
delete from users where id = 4;

select * from users;
select * from photos_03;

