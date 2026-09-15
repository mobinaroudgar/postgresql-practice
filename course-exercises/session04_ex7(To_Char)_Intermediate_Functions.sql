--You need to sum payments and group in the following formats:

--total_amount. numeric
--Fri, 24/01/2020
--PN, 1/02/2020

select to_char(payment_date,'Dy, dd/MM/yyy') Date_payment, sum(amount)
from payment 
group by Date_payment
order by sum(amount) 


--total_amount
--May, 2020
--Jan, 2020

select to_char(payment_date,'Mon, yyyy') Date_payment, sum(amount)
from payment 
group by Date_payment
order by sum(amount) desc

--total_amount
--Thu, 02:44
--Wed, 10:06

select to_char(payment_date,'Dy, HH:MI') Date_payment, sum(amount)
from payment 
group by Date_payment
order by sum(amount) desc





