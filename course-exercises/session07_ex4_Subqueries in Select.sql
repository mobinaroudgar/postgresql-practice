--Show all the payments together with how much the payment amount is below the maximum payment amount.

select *,((select max(amount)from payment)-amount) as difference
from payment