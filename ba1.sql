-- SELECT COUNT(*) FROM ba_flights f
-- RIGHT JOIN ba_aircraft a 
-- ON f.flight_id=a.flight_id

-- What is the average number of passengers (rounded to 1 decimal) on 
-- flights from the manufacturer Boeing for aircraft that have a capacity 
-- of over 200 passengers?This question is required.*


-- SELECT ROUND(AVG(f.total_passengers),1) 
-- FROM ba_flights f
-- LEFT JOIN ba_aircraft a
-- ON f.flight_id=a.flight_id
-- LEFT JOIN ba_fuel_efficiency e
-- ON e.ac_subtype=a.ac_subtype
-- WHERE e.manufacturer='Boeing' AND e.capacity>200


-- How many unique aircraft ac subtypes have completed at least 1 or more flights?This question is required.*

-- SELECT COUNT(DISTINCT e.ac_subtype) FROM ba_fuel_efficiency e
-- left join ba_aircraft a 
-- on a.ac_subtype=e.ac_subtype 
-- left join ba_flights f
-- on a.flight_id=f.flight_id
-- WHERE f.status='Completed'
-- GROUP BY e.ac_subtype
-- HAVING COUNT(f.status) >=1


-- What is the total number of flights 
-- that flew over 3,000km in distance with aircraft that had less than 100 passenger capacity?

-- SELECT COUNT(f.flight_id) 
-- FROM ba_flights f
-- LEFT JOIN ba_flight_routes r
-- ON f.flight_number=r.flight_number
-- LEFT JOIN ba_aircraft a
-- ON f.flight_id=a.flight_id
-- left join ba_fuel_efficiency e
-- on e.ac_subtype=a.ac_subtype
-- WHERE r.distance_flown>3000 AND e.capacity<100


-- How many flights have been conducted by the manufacturer Airbus with ac_subtype ATR42?

-- SELECT COUNT(f.flight_id)
-- from ba_flights f
-- LEFT JOIN ba_aircraft a 
-- ON f.flight_id=a.flight_id
-- WHERE a.ac_subtype='ATR42' and a.manufacturer='Airbus'


-- What is the total baggage weight that has been handled 
-- by the manufacturer Boeing with airplanes that have a fuel efficiency of more than 0.04?This question is required.

-- SELECT SUM(f.baggage_weight) as total_baggage_weight
-- FROM ba_flights f
-- LEFT JOIN ba_aircraft a
-- ON f.flight_id=a.flight_id
-- LEFT JOIN ba_fuel_efficiency e
-- ON a.ac_subtype=e.ac_subtype
-- WHERE e.manufacturer='Boeing' AND e.fuel_efficiency>0.04

SELECT client,SUM(active_users), period
FROM company_products
GROUP BY client
