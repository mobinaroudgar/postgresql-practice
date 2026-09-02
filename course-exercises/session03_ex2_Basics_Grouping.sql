--In 2020, April 28, 29 and 30 were days with very high revenue. That's why we want to focus in this task only on these days(filter accordingly). Find out what is the average payment amount grouped by customer and day - consider only the days/customers with more than 1 payment (per customer and day).

Select customer_id, Date(payment_date), Round(Avg(amount),2), count(*)
From payment 
Where payment_date between '2020-04-28' and '2020-05-01'
Group by customer_id, Date(payment_date)
Having count(*)>1
Order by Round(Avg(amount),2) desc