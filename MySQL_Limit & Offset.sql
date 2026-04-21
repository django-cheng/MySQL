-- limit offset
select * from passengers;
select * from passengers limit 10;
select * from passengers limit 100;
select * from passengers limit 890;
select * from passengers limit 1000;

select * from passengers limit 5, 20;
select * from passengers limit 20, 200;
select * from passengers limit 900, 200;

-- offset
select * from passengers limit 20 offset 5;

--
select * from passengers limit 0, 20;
select * from passengers limit 20, 20;
select * from passengers limit 40, 20;

-- practice p126 --
select * from passengers order by portid limit 2, 820;
select * from passengers order by portid limit 820 offset 2;
-- practice p126 --





