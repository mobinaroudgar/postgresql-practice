--The airline company wants to understand in which category they sell most tickets.
--How many people choose seats in the category
-- Business
-- Economy or
-- Comfort?

SELECT s.fare_conditions AS "Fare Conditions", COUNT(*) AS "Count"
FROM boarding_passes bp
INNER JOIN flights f ON bp.flight_id = f.flight_id
INNER JOIN seats s ON f.aircraft_code = s.aircraft_code AND bp.seat_no = s.seat_no
GROUP BY s.fare_conditions
ORDER BY 2 DESC
