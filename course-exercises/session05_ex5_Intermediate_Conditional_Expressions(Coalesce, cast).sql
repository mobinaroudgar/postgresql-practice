
select rental_date,return_date,coalesce(cast(return_date as varchar),'not_return')
from rental
order by rental_date desc
