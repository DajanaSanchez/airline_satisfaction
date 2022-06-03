use airline_satisfaction;

SELECT Class,
       COUNT(CASE WHEN `Ease of Online Booking` = 1 THEN `Ease of Online Booking` ELSE NULL END) AS 1_star,
       COUNT(CASE WHEN `Ease of Online Booking` = 1 THEN `Ease of Online Booking` ELSE NULL END)/COUNT(`Ease of Online Booking`) AS 1_star_pct,
       COUNT(CASE WHEN `Ease of Online Booking` = 2 THEN `Ease of Online Booking` ELSE NULL END) AS 2_star,
       COUNT(CASE WHEN `Ease of Online Booking` = 2 THEN `Ease of Online Booking` ELSE NULL END)/COUNT(`Ease of Online Booking`) AS 2_star_pct,
       COUNT(CASE WHEN `Ease of Online Booking` = 3 THEN `Ease of Online Booking` ELSE NULL END) AS 3_star,
       COUNT(CASE WHEN `Ease of Online Booking` = 3 THEN `Ease of Online Booking` ELSE NULL END)/COUNT(`Ease of Online Booking`) AS 3_star_pct,
       COUNT(CASE WHEN `Ease of Online Booking` = 4 THEN `Ease of Online Booking`ELSE NULL END) AS 4_star,
       COUNT(CASE WHEN `Ease of Online Booking` = 4 THEN `Ease of Online Booking` ELSE NULL END)/COUNT(`Ease of Online Booking`) AS 4_star_pct,
       COUNT(CASE WHEN `Ease of Online Booking` = 5 THEN `Ease of Online Booking`ELSE NULL END) AS 5_star,
       COUNT(CASE WHEN `Ease of Online Booking` = 5 THEN `Ease of Online Booking` ELSE NULL END)/COUNT(`Ease of Online Booking`) AS 5_star_pct
FROM airline_passenger_satisfaction
GROUP BY Class;



SELECT Class, `Customer Type`,
       COUNT(CASE WHEN `Ease of Online Booking` = 1 THEN `Ease of Online Booking` ELSE NULL END) AS 1_star,
       COUNT(CASE WHEN `Ease of Online Booking` = 1 THEN `Ease of Online Booking` ELSE NULL END)/COUNT(`Ease of Online Booking`) AS 1_star_pct,
       COUNT(CASE WHEN `Ease of Online Booking` = 2 THEN `Ease of Online Booking` ELSE NULL END) AS 2_star,
       COUNT(CASE WHEN `Ease of Online Booking` = 2 THEN `Ease of Online Booking` ELSE NULL END)/COUNT(`Ease of Online Booking`) AS 2_star_pct,
       COUNT(CASE WHEN `Ease of Online Booking` = 3 THEN `Ease of Online Booking` ELSE NULL END) AS 3_star,
       COUNT(CASE WHEN `Ease of Online Booking` = 3 THEN `Ease of Online Booking` ELSE NULL END)/COUNT(`Ease of Online Booking`) AS 3_star_pct,
       COUNT(CASE WHEN `Ease of Online Booking` = 4 THEN `Ease of Online Booking`ELSE NULL END) AS 4_star,
       COUNT(CASE WHEN `Ease of Online Booking` = 4 THEN `Ease of Online Booking` ELSE NULL END)/COUNT(`Ease of Online Booking`) AS 4_star_pct,
       COUNT(CASE WHEN `Ease of Online Booking` = 5 THEN `Ease of Online Booking`ELSE NULL END) AS 5_star,
       COUNT(CASE WHEN `Ease of Online Booking` = 5 THEN `Ease of Online Booking` ELSE NULL END)/COUNT(`Ease of Online Booking`) AS 5_star_pct
FROM airline_passenger_satisfaction
GROUP BY Class, `Customer Type`;



SELECT
       COUNT(CASE WHEN `Check-in Service` = 1 THEN `Check-in Service` ELSE NULL END) AS 1_star,
       COUNT(CASE WHEN `Check-in Service` = 1 THEN `Check-in Service` ELSE NULL END)/COUNT(`Check-in Service`) AS 1_star_pct,
       COUNT(CASE WHEN `Check-in Service` = 2 THEN `Check-in Service` ELSE NULL END) AS 2_star,
       COUNT(CASE WHEN `Check-in Service` = 2 THEN `Check-in Service` ELSE NULL END)/COUNT(`Check-in Service`) AS 2_star_pct,
       COUNT(CASE WHEN `Check-in Service` = 3 THEN `Check-in Service` ELSE NULL END) AS 3_star,
       COUNT(CASE WHEN `Check-in Service` = 3 THEN `Check-in Service` ELSE NULL END)/COUNT(`Check-in Service`) AS 3_star_pct,
       COUNT(CASE WHEN `Check-in Service` = 4 THEN `Check-in Service` ELSE NULL END) AS 4_star,
       COUNT(CASE WHEN `Check-in Service` = 4 THEN `Check-in Service` ELSE NULL END)/COUNT(`Check-in Service`) AS 4_star_pct,
       COUNT(CASE WHEN `Check-in Service` = 5 THEN `Check-in Service` ELSE NULL END) AS 5_star,
       COUNT(CASE WHEN `Check-in Service` = 5 THEN `Check-in Service` ELSE NULL END)/COUNT(`Check-in Service`) AS 5_star_pct
FROM airline_passenger_satisfaction;

