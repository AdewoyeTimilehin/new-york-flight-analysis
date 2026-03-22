SELECT *
FROM flights
LIMIT 5;

/*
MATH OPERATORS
- addition `+`
- subtraction `-`
- division `/`
- multiplication `*`
- modulo `%`
- Exponential `^`
- Square root `|/` (sqrt)
- Cube root `||/`
- Factorial ! (factorial)
*/

SELECT 2 + 2 AS addition;
SELECT 2 - 2 AS sub;
SELECT 2 / 2.5 AS div;
SELECT 2 * 2 AS mult;
SELECT 7 % 3 AS modulo;
SELECT 2^10 AS exponent;
SELECT |/ 4;
SELECT sqrt(4);
SELECT ||/ 8;
SELECT factorial(5);

SELECT
	carrier,
	origin,
	dest,
	air_time AS airtime_in_mins,
	air_time / 60 AS airtime_in_hrs
FROM flights
WHERE air_time IS NOT NULL
ORDER BY air_time DESC;

SELECT 
 faa, name
FROM airports
WHERE faa = 'JFK' OR faa = 'HNL';

SELECT
	DISTINCT origin,
	dest,
	distance * 1.609 AS dist_in_km
FROM flights
ORDER BY dist_in_km DESC;

-- INBUILT MATH FUNCTIONS 
-- Means (AVG)

SELECT *
FROM weather;

SELECT 
	ROUND((AVG (temp))::numeric, 2)
FROM weather;

SELECT 
	AVG (dewp)::numeric
FROM weather

-- Median (discrete and continuous)
-- percentile_cont percentile_disc

SELECT *
FROM weather;

SELECT
	MIN(day) AS min_day,
	PERCENTILE_CONT(.5) WITHIN GROUP (ORDER BY day) AS median_day,
	MAX(day) AS max_day
FROM weather;

SELECT
	MIN(day) AS min_day,
	PERCENTILE_DISC(.5) WITHIN GROUP (ORDER BY day) AS median_day,
	MAX(day) AS max_day
FROM weather;

SELECT
	MIN(day) AS min_day,
	PERCENTILE_DISC(ARRAY[.25, .5, .75]) WITHIN GROUP (ORDER BY day) AS median_day,
	MAX(day) AS max_day
FROM weather;

SELECT
	MODE() WITHIN GROUP (ORDER BY day)
FROM weather;

SELECT
	day,
	COUNT(day) AS day_counts
FROM weather
GROUP BY day
ORDER BY day_counts desc;




	