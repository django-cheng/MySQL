-- distinct
select * from passengers;
select pclass from passengers;
select portid from passengers;

select distinct pclass from passengers;
select distinct portid from passengers;

-- practice p130 --
select count(distinct pclass) class_count from passengers;
#select distinct count(pclass) from passengers; (X)

-- double distinct
select distinct pclass from passengers;
select distinct sex from passengers;
select distinct pclass, sex from passengers;

select distinct pclass, sex, portid from passengers;

--
select count(distinct pclass, sex) from passengers;


