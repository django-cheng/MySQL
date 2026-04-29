use my_titanic;

select sex, count(sex) from full_passengers group by sex;

select id, pname from full_passengers limit 590, 292;

select pname, survived from full_passengers where pname like '%Anders%' and survived = '0.00'
and homedest = 'Sweden Winnipeg, MN';

select * from full_passengers where pname like '%gilbert%' and homedest = 'stanton, ia';

select id, pclass, pname from full_passengers where sex = 'male' and pname like '% leonard%';

select ticket, count(ticket) as ticket_count from full_passengers group by ticket
order by ticket_count desc limit 1;


show warnings;