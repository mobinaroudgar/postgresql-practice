--Show only those movie titles, their associated film_id and replacement_cost with the lowest replacement_costs for in each 
--rating category - also show the  rating.

select title, film_id, replacement_cost,f1.rating from film f1
where replacement_cost =(select min(replacement_cost) from film f2
                         where f1.rating=f2.rating)

--Show only those movie titles, their associated film_id and the length that have
--the highest length in each rating category - also show the rating.


select title, film_id, length, f1.rating from film f1
where length =(select max(length) from film f2
                         where f1.rating=f2.rating)