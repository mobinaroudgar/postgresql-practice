--The flight company is trying to find out what their most popular seats are. 
--Try to find out which seat has been chosen most frequently.Make sure all seats are included even if they have never been booked. 
--Are there seats that have never been booked?

select s.seat_no, count(*) from seats s
left join boarding_passes bp 
  on s.seat_no= bp.seat_no
left join tickets t 
  on t.ticket_no=bp.ticket_no
left join bookings b
  on b.book_ref=t.book_ref
group by s.seat_no
order by count(*) desc
