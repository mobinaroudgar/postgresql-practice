--You want to create a tier list in the following way:
--1. Rating is 'PG' or 'PG-13' or length is more then 210 min: Great rating or long (tier 1)
--2.Description contains 'Drama' and length is more than 90min: Long drama (tier 2)'
--3. Description contains 'Drama' and length is not more than 90min: Short drama (tier 3)'
--4. Rental_rate less than $1: 'Very cheap (tier 4)'
--If one movie can be in multiple categories it gets the higher tier assigned.
--How can you filter to only those movies that appear in one of these 4 tiers?

select title,
case
when rating in('PG','PG-13') or length>210 then 'Great rating or long' 
when description ilike '%drama%' or length>90 then 'Long drama ' 
when description ilike '%drama%' or length<90 then 'Short drama ' 
when rental_rate<1 then 'Very cheap'
end  as fillter_by_4steps
from film
