--There are two competitions between the two employees. Which employee had the highest sales amount in a single day? 
--Which employee had the most sales in a single day (not counting payments with amount = 0?

Select  staff_id, Date(payment_date), Sum(amount), Count(*)
From payment
where amount!=0
Group by staff_id, Date(payment_date)
order by Sum(amount) desc

