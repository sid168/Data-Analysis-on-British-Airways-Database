-- Can you select the unique flight numbers and arrival cities of flights that either have more than 0 passengers or more than 0kg baggage weight on board or that have flown more than 0km in distance for flights that depart from London

SELECT DISTINCT flight_number,arrival_city
FROM ba_flights
WHERE (total_passengers > 0 OR baggage_weight>0 OR distance_flown>0) AND departure_city='London'








