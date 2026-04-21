-- order by
select * from passengers;

select * from passengers order by pclass;
select * from passengers order by age;
select * from passengers order by name;

-- desc
select * from passengers order by age desc;

-- ascend (default)
select * from passengers order by age asc;

-- pracetice p123 --
select * from passengers order by -portId desc;
-- pracetice p123 --

-- double order by
select * from passengers order by pclass;
select * from passengers order by portid;

select * from passengers order by pclass, portid;
select * from passengers order by portid, pclass;

