--You need to find out how many tickets you have sold in the following categories:
--· Low price ticket: total_amount < 20,000
--· Mid price ticket: total_amount between 20,000 and 150,000
--· High price ticket: total_amount >= 150,000
--How many high price tickets has the company sold?

select
case 
when total_amount<20000 then 'Low_price_ticket'
when total_amount<150000 then 'Mid_price_ticket'
else'High_price_ticket'
end as filter_byprice, count(*)
from bookings
group by filter_byprice