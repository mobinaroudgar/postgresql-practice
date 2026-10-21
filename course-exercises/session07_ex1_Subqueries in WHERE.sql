--Select all of the films where the length is longer than the average of all films.
select film_id,title from film
where length>(select avg(length) from film)


--Return all the films that are available in the inventory in store 2 more than 3 times.
select film_id,title from film
where film_id in (select film_id from inventory
                 where store_id=2
                 group by film_id
                 having count(*)>3)


