use airline_satisfaction;

SELECT
AVG(`Departure and Arrival Time Convenience`) AS avg_dept_arrival,
AVG(`Ease of Online Booking`) AS avg_online_booking,
AVG(`Check-in Service`) AS avg_check_in,
AVG(`Online Boarding`) AS avg_online_boarding,
AVG(`Gate Location`) AS avg_gate_location,
AVG(`On-board Service`) AS avg_onboard_service,
AVG(`Seat Comfort`) AS avg_seat_comfort,
AVG(`Leg Room Service`) AS avg_leg_room,
AVG(Cleanliness) AS avg_cleanliness,
AVG(`Food and Drink`) AS avg_food_drink,
AVG(`In-flight Service`) AS avg_inflight_service,
AVG(`In-flight Wifi Service`) AS avg_wifi_service,
AVG(`In-flight Entertainment`) AS avg_inflight_entertain,
AVG(`Baggage Handling`) AS avg_baggage
FROM airline_passenger_satisfaction

#low average ratings on departure/arrival convenience, online booking, gate location, and wifi services for all travel classes
#higher average ratings on seat comfort, in flight service, and baggage handling for all travel classes

SELECT *, (AVG(avg_dept_arrival + avg_online_booking + avg_check_in + avg_online_boarding + avg_gate_location + avg_onboard_service + avg_seat_comfort + avg_leg_room + avg_cleanliness + avg_food_drink + avg_inflight_service + avg_wifi_service + avg_inflight_entertain + avg_baggage)/14) AS total_avg
FROM(
SELECT class,
AVG(`Departure and Arrival Time Convenience`) AS avg_dept_arrival,
AVG(`Ease of Online Booking`) AS avg_online_booking,
AVG(`Check-in Service`) AS avg_check_in,
AVG(`Online Boarding`) AS avg_online_boarding,
AVG(`Gate Location`) AS avg_gate_location,
AVG(`On-board Service`) AS avg_onboard_service,
AVG(`Seat Comfort`) AS avg_seat_comfort,
AVG(`Leg Room Service`) AS avg_leg_room,
AVG(Cleanliness) AS avg_cleanliness,
AVG(`Food and Drink`) AS avg_food_drink,
AVG(`In-flight Service`) AS avg_inflight_service,
AVG(`In-flight Wifi Service`) AS avg_wifi_service,
AVG(`In-flight Entertainment`) AS avg_inflight_entertain,
AVG(`Baggage Handling`) AS avg_baggage
FROM airline_passenger_satisfaction
GROUP BY Class) AS avg_ratings
GROUP BY Class;

# online_booking, check in, online boarding, onboard services, seat comfort, leg room, cleanliness, food/drink, inflight service, in flight entertainment, and baggage handling ratings are higher for business class
#deptarture/arrival is the only rating lower for business
#similar rates for gate location and wifi service (wi-fi service being the lowest rated of all ratings)
#business class had higher overall rating across the board while economy/economy plus are virtually the same

SELECT *, (AVG(avg_dept_arrival + avg_online_booking + avg_check_in + avg_online_boarding + avg_gate_location + avg_onboard_service + avg_seat_comfort + avg_leg_room + avg_cleanliness + avg_food_drink + avg_inflight_service + avg_wifi_service + avg_inflight_entertain + avg_baggage)/14) AS total_avg
FROM(
SELECT `Type of Travel`,
AVG(`Departure and Arrival Time Convenience`) AS avg_dept_arrival,
AVG(`Ease of Online Booking`) AS avg_online_booking,
AVG(`Check-in Service`) AS avg_check_in,
AVG(`Online Boarding`) AS avg_online_boarding,
AVG(`Gate Location`) AS avg_gate_location,
AVG(`On-board Service`) AS avg_onboard_service,
AVG(`Seat Comfort`) AS avg_seat_comfort,
AVG(`Leg Room Service`) AS avg_leg_room,
AVG(Cleanliness) AS avg_cleanliness,
AVG(`Food and Drink`) AS avg_food_drink,
AVG(`In-flight Service`) AS avg_inflight_service,
AVG(`In-flight Wifi Service`) AS avg_wifi_service,
AVG(`In-flight Entertainment`) AS avg_inflight_entertain,
AVG(`Baggage Handling`) AS avg_baggage
FROM airline_passenger_satisfaction
GROUP BY `Type of Travel`) AS avg_rate
GROUP BY `Type of Travel`;

#both business and personal travel have low online booking, gate location, and wifi service rates
#business has low avg departing/arrival, avg online booking rates
#personal has low online boarding, leg room, food and drink, and in flight entertainment
#business has overall better rating across the board
