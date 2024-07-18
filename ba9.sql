-- Can you identify all columns of the flights that are scheduled to leave between April 15 and May 15 2023, and fly a distance less than 1000km?

SELECT * 
FROM ba_flights
WHERE status='Scheduled' AND actual_flight_date BETWEEN '2023-04-15' and '2023-05-15' AND distance_flown<1000









