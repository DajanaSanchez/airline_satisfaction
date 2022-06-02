use airline_satisfaction;

SELECT AVG(`Departure Delay`) AS avg_departure_delay, AVG(`Arrival Delay`) AS avg_arrival_delay
FROM airline_passenger_satisfaction;

#average departure delay - 14.71 minutes
#average arrival delay - 15.09 minutes


SELECT
       COUNT(CASE WHEN `Departure Delay` BETWEEN 60 AND 180 THEN `Departure Delay` ELSE NULL END) AS '1-3hr_delay',
       COUNT(CASE WHEN `Departure Delay` BETWEEN 181 AND 360 THEN `Departure Delay` ELSE NULL END) AS '3-6hr_delay',
       COUNT(CASE WHEN `Departure Delay` BETWEEN 361 AND 540 THEN `Departure Delay` ELSE NULL END) AS '6-9hr_delay',
       COUNT(CASE WHEN `Departure Delay` BETWEEN 541 AND 720 THEN `Departure Delay` ELSE NULL END) AS '9-12hr_delay',
       COUNT(CASE WHEN `Departure Delay` BETWEEN 721 AND 900 THEN `Departure Delay` ELSE NULL END) AS '12-15hr_delay',
       COUNT(CASE WHEN `Departure Delay` BETWEEN 901 AND 1080 THEN `Departure Delay` ELSE NULL END) AS '15-18hr_delay',
       COUNT(CASE WHEN `Departure Delay` BETWEEN 1081 AND 1260 THEN `Departure Delay` ELSE NULL END) AS '18-21hr_delay',
       COUNT(CASE WHEN `Departure Delay` BETWEEN 1261 AND 1440 THEN `Departure Delay` ELSE NULL END) AS '21-24hr_delay',
       COUNT(CASE WHEN `Departure Delay` BETWEEN 1441 AND 1620 THEN `Departure Delay` ELSE NULL END) AS '24-27hr_delay'
FROM airline_passenger_satisfaction

#majority of departure delays are between one hour and 6 hours

SELECT
       COUNT(CASE WHEN `Departure Delay` BETWEEN 60 AND 120 THEN `Departure Delay` ELSE NULL END) AS '1-2hr_delay',
       COUNT(CASE WHEN `Departure Delay` BETWEEN 121 AND 240 THEN `Departure Delay` ELSE NULL END) AS '2-4hr_delay',
       COUNT(CASE WHEN `Departure Delay` BETWEEN 241 AND 360 THEN `Departure Delay` ELSE NULL END) AS '4-6hr_delay'
FROM airline_passenger_satisfaction

#based on the above results, it looks like the majority of the delays are 1-2 hours


SELECT
       COUNT(CASE WHEN `Arrival Delay` BETWEEN 60 AND 180 THEN `Arrival Delay` ELSE NULL END) AS '1-3hr_delay',
       COUNT(CASE WHEN `Arrival Delay` BETWEEN 181 AND 360 THEN `Arrival Delay` ELSE NULL END) AS '3-6hr_delay',
       COUNT(CASE WHEN `Arrival Delay` BETWEEN 361 AND 540 THEN `Arrival Delay` ELSE NULL END) AS '6-9hr_delay',
       COUNT(CASE WHEN `Arrival Delay` BETWEEN 541 AND 720 THEN `Arrival Delay` ELSE NULL END) AS '9-12hr_delay',
       COUNT(CASE WHEN `Arrival Delay` BETWEEN 721 AND 900 THEN `Arrival Delay` ELSE NULL END) AS '12-15hr_delay',
       COUNT(CASE WHEN `Arrival Delay` BETWEEN 901 AND 1080 THEN `Arrival Delay` ELSE NULL END) AS '15-18hr_delay',
       COUNT(CASE WHEN `Arrival Delay` BETWEEN 1081 AND 1260 THEN `Arrival Delay` ELSE NULL END) AS '18-21hr_delay',
       COUNT(CASE WHEN `Arrival Delay` BETWEEN 1261 AND 1440 THEN `Arrival Delay` ELSE NULL END) AS '21-24hr_delay',
       COUNT(CASE WHEN `Arrival Delay` BETWEEN 1441 AND 1620 THEN `Arrival Delay` ELSE NULL END) AS '24-27hr_delay'
FROM airline_passenger_satisfaction

#majority of arrival delays are between one hour and 6 hours

SELECT
       COUNT(CASE WHEN `Arrival Delay` BETWEEN 60 AND 120 THEN `Arrival Delay` ELSE NULL END) AS '1-2hr_delay',
       COUNT(CASE WHEN `Arrival Delay` BETWEEN 121 AND 240 THEN `Arrival Delay` ELSE NULL END) AS '2-4hr_delay',
       COUNT(CASE WHEN `Arrival Delay` BETWEEN 241 AND 360 THEN `Arrival Delay` ELSE NULL END) AS '4-6hr_delay'
FROM airline_passenger_satisfaction

#based on the above, the majority of arrival delays are between 1-2 hours


SELECT Class,
       COUNT(CASE WHEN `Departure and Arrival Time Convenience` = 1 THEN `Departure and Arrival Time Convenience` ELSE NULL END) AS 1_star,
       COUNT(CASE WHEN `Departure and Arrival Time Convenience` = 2 THEN `Departure and Arrival Time Convenience` ELSE NULL END) AS 2_star,
       COUNT(CASE WHEN `Departure and Arrival Time Convenience` = 3 THEN `Departure and Arrival Time Convenience` ELSE NULL END) AS 3_star,
       COUNT(CASE WHEN `Departure and Arrival Time Convenience` = 4 THEN `Departure and Arrival Time Convenience` ELSE NULL END) AS 4_star,
       COUNT(CASE WHEN `Departure and Arrival Time Convenience` = 5 THEN `Departure and Arrival Time Convenience` ELSE NULL END) AS 5_star
FROM airline_passenger_satisfaction
GROUP BY Class;

#most people rated departure/arrival satisfaction at 4 stars, then 5 stars overall
# when grouping by class: business rated 4 stars the most, economy rated 4 star, economy plus rated 4 star

SELECT `Customer Type`,
       COUNT(CASE WHEN `Departure and Arrival Time Convenience` = 1 THEN `Departure and Arrival Time Convenience` ELSE NULL END) AS 1_star,
       COUNT(CASE WHEN `Departure and Arrival Time Convenience` = 2 THEN `Departure and Arrival Time Convenience` ELSE NULL END) AS 2_star,
       COUNT(CASE WHEN `Departure and Arrival Time Convenience` = 3 THEN `Departure and Arrival Time Convenience` ELSE NULL END) AS 3_star,
       COUNT(CASE WHEN `Departure and Arrival Time Convenience` = 4 THEN `Departure and Arrival Time Convenience` ELSE NULL END) AS 4_star,
       COUNT(CASE WHEN `Departure and Arrival Time Convenience` = 5 THEN `Departure and Arrival Time Convenience` ELSE NULL END) AS 5_star
FROM airline_passenger_satisfaction
GROUP BY `Customer Type`;

#when grouping by customer type, first_time customers rated 2 stars the most, then 3 stars; returning customers rated 4 stars

SELECT `Type of Travel`,
       COUNT(CASE WHEN `Departure and Arrival Time Convenience` = 1 THEN `Departure and Arrival Time Convenience` ELSE NULL END) AS 1_star,
       COUNT(CASE WHEN `Departure and Arrival Time Convenience` = 2 THEN `Departure and Arrival Time Convenience` ELSE NULL END) AS 2_star,
       COUNT(CASE WHEN `Departure and Arrival Time Convenience` = 3 THEN `Departure and Arrival Time Convenience` ELSE NULL END) AS 3_star,
       COUNT(CASE WHEN `Departure and Arrival Time Convenience` = 4 THEN `Departure and Arrival Time Convenience` ELSE NULL END) AS 4_star,
       COUNT(CASE WHEN `Departure and Arrival Time Convenience` = 5 THEN `Departure and Arrival Time Convenience` ELSE NULL END) AS 5_star
FROM airline_passenger_satisfaction
GROUP BY `Type of Travel`;

#when grouping by type of travel, business rated 3 star the most although the 2 star, 3 star, and 4 star ratings are pretty equal
#personal travel rated 4 star the most

SELECT `Type of Travel`, Class,
       COUNT(CASE WHEN `Departure and Arrival Time Convenience` = 1 THEN `Departure and Arrival Time Convenience` ELSE NULL END) AS 1_star,
       COUNT(CASE WHEN `Departure and Arrival Time Convenience` = 2 THEN `Departure and Arrival Time Convenience` ELSE NULL END) AS 2_star,
       COUNT(CASE WHEN `Departure and Arrival Time Convenience` = 3 THEN `Departure and Arrival Time Convenience` ELSE NULL END) AS 3_star,
       COUNT(CASE WHEN `Departure and Arrival Time Convenience` = 4 THEN `Departure and Arrival Time Convenience` ELSE NULL END) AS 4_star,
       COUNT(CASE WHEN `Departure and Arrival Time Convenience` = 5 THEN `Departure and Arrival Time Convenience` ELSE NULL END) AS 5_star
FROM airline_passenger_satisfaction
GROUP BY `Type of Travel`, Class
ORDER BY Class;

#business travel - business class - 4 star rating is highest
#personal travel - business class - 4 star rating is highest
#business travel - economy class - 2 star rating is highest !!!
#personal travel - economy class - 4 star rating is highest
#business travel - economy plus - 2 star rating is highest !!!
#personal travel - economy plus - 4 star rating is highest