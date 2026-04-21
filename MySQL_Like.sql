-- like
select * from passengers;
select * from passengers where name = 'Braund, Mr. Owen Harris';

-- find william
select * from passengers where name = 'William';
select * from passengers where name like 'William';

-- wildcard %
select * from passengers where name like '%William%';
select * from passengers where name like '% William %' and sex = 'male';

#select * from passengers where name like '%Williams,%'; (X)
select * from passengers where name like 'Williams,%';

-- find Smith
select * from passengers where name like '%Smith,%';
select * from passengers where name like 'Smith,%';

-- find )
select * from passengers where name like '%)';

-- double like
select * from passengers where name like '%williams%' and name like '%charles%';
select * from passengers where name like '%williams%' or name like '%charles%';

-- find digital place
select * from passengers;
select * from passengers where ticketid like '_';
select * from passengers where ticketid like '__';
select * from passengers where ticketid like '___';

-- practice p135 --
select * from passengers where ticketid like '__' and name like '% William %' and sex = 'male';
-- practice p135 --



