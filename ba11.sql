-- Imagine you are looking for unique departure cities with the text “City” but unsure which cities include it. How do you pull the unique cities that include the text “City”?


SELECT DISTINCT departure_city 
FROM ba_flights
WHERE departure_city LIKE '%City%'







