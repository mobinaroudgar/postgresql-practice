--You need to find out how many flights are scheduled for departure in the following seasons:
--Winter: December, January, Februar
--Spring: March, April, May
--Summer: June, July, August
--Fall: September, October, November

select 
case 
when Extract(month from scheduled_departure) in (12,1,2) then 'Winter'
when Extract(month from scheduled_departure) in (3,4,5) then 'Spring'
when Extract(month from scheduled_departure)in (6,7,8) then 'Summer'
else'fall'
end as filter_byseasons,
count(*)
from flights
Group by filter_byseasons
