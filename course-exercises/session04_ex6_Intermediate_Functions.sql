--You need to analyze the payments and find out the following: 

--What's the month with the highest total payment amount?
select Extract(month from payment_date),sum(amount)
from payment
group by Extract(month from payment_date)
order by sum(amount) desc 
limit 1

--What's the day of week with the highest total payment amount? (0 is Sunday)
select Extract(Dow from payment_date),sum(amount)
from payment
group by Extract(Dow from payment_date)
order by sum(amount) desc 
limit 1

--What's the highest amount one customer has spent in a week?

select Extract(week from payment_date), customer_id,sum(amount)
from payment
group by Extract(week from payment_date),customer_id
order by sum(amount) desc 
limit 1


