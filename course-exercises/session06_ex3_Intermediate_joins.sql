--The company wants to run a phone call campaing on all customers in Texas (=district).

--What are the customers (first_name, last_name, phone number and their district) from Texas?

select first_name,last_name,phone,a.address_id,district 
from address a
right join customer cu
on cu.address_id= a.address_id
where district= 'Texas'


--Are there any (old) addresses that are not related to any customer?

select cu.customer_id,first_name,last_name,phone,a.address_id,district 
from address a
left join customer cu
on cu.address_id= a.address_id
where customer_id is null