
--Show all the payments plus the total amount for every customer as well as the number of payments of each customer.

select * , (select sum(amount) from payment p1 
            where p1.customer_id=p2.customer_id) as sum_amount
			,(select count(amount) from payment p3 
            where p3.customer_id=p2.customer_id) as count_amount
from payment p2
order by customer_id

--Show only those films with the highest replacement costs in their rating category plus show 
--the average replacement cost in their rating category.

select film_id,title,rating, (select avg(replacement_cost) from film f3
                          where f3.rating=f1.rating)
from film  f1
where replacement_cost = (select max(replacement_cost) from film f2
                          where f2.rating=f1.rating)
order by film_id


--Show only those payments with the highest payment for each customer's first name - including the payment_id of that payment.
--How would you solve it if you would not need to see the payment_id?

select first_name,amount
from payment p1 
inner join customer c1 on p1.customer_id=c1.customer_id
where amount = (select max(amount) from payment p2
				where p1.customer_id=p2.customer_id)
 



