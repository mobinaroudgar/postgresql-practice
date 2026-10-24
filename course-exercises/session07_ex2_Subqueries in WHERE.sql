--Return all customers' first names and last names that have made a payment on '2020-01-25'.

select first_name,last_name from customer
where customer_id in (select customer_id from payment
                      where date(payment_date)='2020-01-25')


--Return all customers' first_names and email addresses that have spent a more than $30.
select first_name, email from customer
where customer_id in( select customer_id from payment  
                      group by  customer_id
                      having sum(amount)>30)
					  

--Return all the customers' first and last names that are from California and have spent more than 100 in total. 
select first_name, last_name  from customer
where customer_id in(select customer_id from payment  
                      group by  customer_id
                      having sum(amount)>100) and
	address_id in(select address_id from address
                  where district ilike 'California')



