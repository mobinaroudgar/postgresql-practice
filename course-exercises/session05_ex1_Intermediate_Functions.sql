--Your manager is thinking about increasing the prices for films that are more expensive to replace. For that reason, you should create a list of the films including
--the relation of rental rate / replacement cost where the rental rate  is less than 4% of the replacement cost.

--Create a list of that film_ids together with the percentage rounded to 2 decimal places. For example 3.54 (=3.54%).

select film_id,
Round((rental_rate/replacement_cost*100),2)
from film
where (rental_rate-(0.04*replacement_cost))<0


