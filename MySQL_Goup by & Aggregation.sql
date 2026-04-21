-- group by & aggregation
select * from passengers;
select * from ports;
select * from tickets;

-- group by
select * from passengers group by pclass;

show warnings;
# Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'my_train_titanic.passengers.id' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by

-- use aggregated funtion
select count(pclass) from passengers group by pclass;
select pclass, count(pclass) from passengers group by pclass;

select sex, count(sex) from passengers group by sex;

select age, count(age) from passengers group by age;

-- pracetice #8 --
#1
select sex, avg(age) from passengers group by sex;
#2
select pclass, max(age) from passengers group by pclass;
# select sex, max(age) from passengers group by sex;
# select survived, max(age) from passegers group by sex;
#3
select pclass, min(age) from passengers group by pclass;
# select sex, min(age) from passengers group by sex;
# select survived, min(age) from passengers group by survived;
-- pracetice #8 --

-- group by with join
create table artists(
id int primary key auto_increment,
artist_name varchar(50) not null unique
);

create table songs(
id int not null primary key auto_increment,
song_name varchar(50) not null,
artist_id int,
foreign key(artist_id) references artists(id) on delete cascade
);

insert into artists(artist_name)
values('Bruno Mars'), ('Jay Sean'), ('Usher'), ('Sean Kingston');

insert into songs(song_name, artist_id)
values('Just the way you are', 1), ('Treasure', 1), ('Down', 2), ('Yeah', 3), ('DJ got us fall in love again', 3), ('Beautiful girls', 4);

select * from artists;
select * from songs;

-- select artist_name, count(aritst_id)
-- from artists
-- join songs
-- on aritst_id = aritsts.id
-- group by artist_name;

#1 join
select *
from artists
join songs
on artist_id = artists.id;

#2 aggregational function
select artist_name, count(artist_id) as 'numbers of songs'
from artists
join songs
on artist_id = artists.id
group by artist_id;

-- having
select artist_name, count(artist_id) as 'numbers of songs'
from artists
join songs
on artists.id = artist_id
group by artist_id
having count(artist_id) >=2 ;

-- practice #9 p120 --
select * from passengers;
select * from ports;

select city, count(portId) as 'boarding counts'
from passengers
join ports
on portId = ports.id
group by city
having count(portId) >= 100;
-- practice #9 p120 --

-- count(portId) v.s. count(*)
select portid, count(portId) from passengers group by portid;
select portid, count(*) from passengers group by portid;