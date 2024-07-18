-- Select the flight IDs, number of bike bags, and baggage weight for flights that have a baggage revenue above £50,000


SELECT flight_id, bike_bags,baggage_weight

FROM ba_flights

WHERE revenue_from_baggage > 50000







