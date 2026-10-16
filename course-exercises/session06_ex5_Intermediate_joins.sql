--The company wants customize their campains to customers depending on the country they are from. Which customers are from Brazil?
--Write a query to get first_name, last_name, email and the country from all customers from Brazil.

select first_name,last_name,email,country
from customer c 
left join address a 
   on a.address_id=c.address_id
left join city ci 
   on ci.city_id=a.city_id 
left join country cou
   on cou.country_id=ci.country_id
where country ilike 'brazil'
