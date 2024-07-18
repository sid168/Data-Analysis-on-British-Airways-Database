SELECT 
	flight_number,
  departure_city
 FROM ba_flights
 WHERE status='Scheduled'
AND 
(revenue_from_baggage=0 OR total_passengers=0)









