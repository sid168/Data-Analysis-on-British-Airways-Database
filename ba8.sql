-- Select the flight IDs and fuel consumption for flights that either have a baggage weight below 3000 or less than 200 passengers on the flight

SELECT flight_id, total_fuel_consumption
FROM ba_flights
WHERE baggage_weight<3000 OR total_passengers<200








