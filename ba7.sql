-- Select all the columns for flights that are cancelled and either depart from or arrive at Panama City

SELECT * 
FROM ba_flights
WHERE status='Cancelled' AND ( departure_city='Panama City' OR arrival_city='Panama City' )








