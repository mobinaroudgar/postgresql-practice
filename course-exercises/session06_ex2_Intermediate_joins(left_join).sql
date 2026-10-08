--which line (A, B, ... , H) has been chosen most frequently.

select DISTINCT REGEXP_REPLACE(s.seat_no, '^[0-9]+', '') AS row, count(*) 
from seats s
left join boarding_passes bp 
on s.seat_no= bp.seat_no
left join tickets t 
on t.ticket_no=bp.ticket_no
left join bookings b
on b.book_ref=t.book_ref
group by REGEXP_REPLACE(s.seat_no, '^[0-9]+', '') 
order by count(*) desc