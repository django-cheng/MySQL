use my_titanic;

# Question 1
select sex, count(sex) from full_passengers group by sex;

# Question 2
select id, pname from full_passengers limit 590, 293;

# Question 3
select pname, survived from full_passengers where pname like '%Anders%' and survived = '0.00'
and homedest = 'Sweden Winnipeg, MN';

# Question 4
select * from full_passengers where pname like '%gilbert%' and homedest = 'stanton, ia';

# Question 5
select id, pclass, pname from full_passengers where sex = 'male' and pname like '% leonard%';

# Question 6
select ticket, count(ticket) as ticket_count from full_passengers group by ticket
order by ticket_count desc limit 1;

# Question 7
select pclass, sex, avg(age) from full_passengers where sex = 'male' and pclass in (2,3) group by pclass;

# Question 8
select
embarked as 登船點,
count(embarked) as 登船人數,
round(count(embarked) * 100.0 / (select count(embarked) from full_passengers where embarked is not null and embarked != ''), 2) as 登船點占百分比
from full_passengers
where embarked is not null and embarked != ''
group by embarked;