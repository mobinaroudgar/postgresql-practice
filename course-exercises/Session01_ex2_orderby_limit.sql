--2. What is the latest rental date?
select rental_date
from rental
order by rental_date desc 
limit 1