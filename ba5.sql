-- Select the flight number, flight date, departure city, and arrival city for flights that leave after May 1, 2023

SELECT flight_number, actual_flight_date,departure_city,arrival_city
FROM ba_flights
WHERE actual_flight_date > '2023-05-01'








