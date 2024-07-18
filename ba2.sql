/*
list of cancelled flights by heathrow arirport and (information on departure,arrival,flightnumber,where departure city is london
due to air traffic control strikes 
so as to save money by not paying for the unused services like fuel etc.
*/
/*
Objective:
Minimize Financial Losses:
Implement data analysis strategies to mitigate the financial impact of air traffic control strikes on airlines and airports.
Identify areas where cost savings can be achieved due to cancelled flights resulting from the strike.
Possible Losses:
Revenue Loss:
Income loss from ticket sales for cancelled flights.
Potential loss of revenue from ancillary services such as baggage fees, in-flight purchases, and seat upgrades.
Operating Costs:
Costs incurred for fuel, crew salaries, and aircraft maintenance for flights that are cancelled or delayed.
Ground handling fees and airport charges for scheduled flights that are cancelled.
Customer Compensation:
Expenses associated with compensating passengers for disrupted travel plans, including refunds, rebooking fees, and accommodation costs for stranded travelers.
Reputation Damage:
Negative impact on the reputation of airlines and airports due to service disruptions and customer dissatisfaction.
Potential loss of future business and loyalty from affected passengers.
Opportunity Costs:
Missed revenue opportunities from potential passengers who choose alternative modes of transportation or postpone their travel plans due to uncertainty surrounding the strike.
Regulatory Fines and Penalties:
Potential fines or penalties imposed by regulatory authorities for failing to meet service level agreements or safety standards during the strike period.
*/
-- SELECT 
-- 	departure_city,
--   arrival_city,
--   total_passengers,
--   flight_number,
--   status,
--   actual_flight_date
-- FROM ba_flights
-- WHERE status='Cancelled';

-- SELECT 
-- 	departure_city,
--   arrival_city,
--   total_passengers,
--   flight_number,
  
-- FROM ba_flights
-- WHERE arrival_city IN ('Aberdeen','Madrid');

-- How many passengers were affected by the strike?

SELECT SUM(total_passengers)
FROM ba_flights
WHERE status='Cancelled'






