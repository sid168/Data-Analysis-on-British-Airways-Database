
-- How many unique flight dates did each aircraft (manufacturer and ac subtype) operate on? 
-- Make sure to also include the aircraft that did not operate on flights at all.

SELECT COUNT(DISTINCT f.actual_flight_date) AS total_flights,e.ac_subtype,e.manufacturer

FROM ba_fuel_efficiency e
FULL JOIN ba_aircraft a
ON e.ac_subtype=a.ac_subtype
FULL JOIN ba_flights f
ON f.flight_id=a.flight_id
GROUP BY e.ac_subtype,e.manufacturer
ORDER BY total_flights DESC







