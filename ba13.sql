SELECT fuel.manufacturer,
			 fuel.ac_subtype,
       COUNT(DISTINCT flights.actual_flight_date) as total_flights

FROM ba_flights flights
     INNER JOIN ba_aircraft aircraft ON flights.flight_id = aircraft.flight_id
     FULL JOIN ba_fuel_efficiency fuel ON aircraft.ac_subtype = fuel.ac_subtype

GROUP BY fuel.manufacturer,
		  	 fuel.ac_subtype
ORDER BY total_flights DESC








