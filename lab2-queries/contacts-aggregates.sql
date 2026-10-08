select count(*) from contacts;
select avg(age) from contacts;
select max(age) from contacts;
select count(*) from contacts where country = 'USA';
select count(*) from contacts where status = 'Active';
select avg(age) from contacts where country = 'USA';
select status, avg(age) from contacts group by status;