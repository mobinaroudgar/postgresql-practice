--What is the average total amount spent per day (average daily revenue)?
select avg(sum_payment)
from

(select date(payment_date), sum(amount) as sum_payment from payment
group by date(payment_date))