/*Create temporary table first touch*/
WITH first_touch AS (
    SELECT user_id,
        MIN(timestamp) as first_touch_at
    FROM page_visits
    GROUP BY user_id)
SELECT ft.user_id,
    ft.first_touch_at,
    pv.utm_source,
		pv.utm_campaign
FROM first_touch ft
JOIN page_visits pv
    ON ft.user_id = pv.user_id
    AND ft.first_touch_at = pv.timestamp;
    SELECT COUNT(DISTINCT utm_campaign);

/*Count distinct values for utm_campaign, utm_source from table page_visits*/
SELECT COUNT(DISTINCT utm_campaign), COUNT(DISTINCT(utm_source))
FROM page_visits;

/*Select column utm_campaign, utm_source from table page_visits*/
SELECT utm_campaign, utm_source
FROM page_visits;

/*Select Distinct page names from table page visits*/
SELECT DISTINCT(page_name)
FROM page_visits;

/*Create temporary table first_touch to calculate how many first touches each campaign is responsible for*/
WITH first_touch AS(
  SELECT user_id,
    MIN(timestamp) as first_touch_at
    FROM page_visits
    GROUP BY user_id)
  SELECT ft.user_id,
    ft.first_touch_at,
    pv.utm_source,
    pv.utm_campaign,
    COUNT(utm_campaign)
  FROM first_touch ft
  JOIN page_visits pv
    ON ft.user_id = pv.user_id
    AND ft.first_touch_at = pv.timestamp
  GROUP BY utm_campaign
  ORDER BY 3 DESC;

/*Create temporary table last_touch to calculate how many first touches each campaign is responsible for*/
WITH last_touch AS(
  SELECT user_id,
    MAX(timestamp) as last_touch_at
    FROM page_visits
    WHERE page_name LIKE '%4 - purchase%'
    GROUP BY user_id)
  SELECT lt.user_id,
    lt.last_touch_at,
    pv.utm_source,
    pv.utm_campaign,
    COUNT(utm_campaign)
  FROM last_touch lt
  JOIN page_visits pv
    ON lt.user_id = pv.user_id
    AND lt.last_touch_at = pv.timestamp
  GROUP BY utm_campaign
  ORDER BY 5 DESC
  LIMIT 5;

/*Count the distinct users who visit the page named 4 - purchase*/
SELECT COUNT(DISTINCT user_id), page_name
FROM page_visits
WHERE page_name LIKE '%4 - purchase%';
