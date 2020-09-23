/*Distinct neighborhoods*/
SELECT DISTINCT neighborhood
FROM nomnom;

/*Distinct cuisine*/
SELECT DISTINCT cuisine 
FROM nomnom;

/*What are the options for Chinese takeout*/
SELECT *
FROM nomnom
WHERE cuisine = 'Chinese';

/*Return all restaurants with reviews of 4 and above*/
SELECT *
FROM nomnom
WHERE review > 4;

/*Return all restaurants that are Italian and $$$*/
SELECT *
FROM nomnom
WHERE cuisine = 'Italian' AND price = '$$$';

/*Query restaurant names that include meatball*/
SELECT *
from nomnom
WHERE name LIKE '%meatball%';

/*Find all delivery spots in Midtown,Downtown,Chinatown*/
SELECT *
FROM nomnom
WHERE neighborhood = 'Midtown' 
OR neighborhood = 'Downtown' 
OR neighborhood = 'Chinatown';

/*Find all the health grade pending restaurants*/
SELECT *
FROM nomnom 
WHERE health IS NULL;

/*Create a top 10 Restaurant Ranking based on reviews*/
SELECT *
FROM nomnom
WHERE review > 4
ORDER BY review DESC
LIMIT 10;

/*Use a CASE statement to change the rating system*/
SELECT review,
  CASE
    WHEN review > 4.5 THEN 'Extraordinary'
    WHEN review > 4 THEN 'Excellent'
    WHEN review > 3 THEN 'Good'
    WHEN review > 2 THEN 'Fair'
    ELSE 'Poor'
  END AS 'Review'
FROM nomnom;
