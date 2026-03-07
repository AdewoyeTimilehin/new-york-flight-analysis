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
