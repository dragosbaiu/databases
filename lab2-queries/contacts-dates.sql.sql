select * from contacts where year(signup_date) = 2025;
select * FROM contacts WHERE Month(signup_date ) = 2;
select name, datediff(CURDATE(), signup_date) as days_ago from contacts order by days_ago;
select country, count(*) from contacts group by country;
select * from contacts order by datediff(CURDATE(), signup_date) desc limit 1;