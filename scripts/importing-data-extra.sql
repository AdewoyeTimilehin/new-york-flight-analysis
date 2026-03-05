CREATE TABLE teachers_salaries(
	id SMALLSERIAL PRIMARY KEY,
	town TEXT, -- VARCHAR, CHAR
	name TEXT, 
	start_date DATE, -- TIMESTAMP,
	salary INT, -- REAL
	benefits INT
);

SELECT *
FROM teachers_salaries;

-- Import select columns
COPY teachers_salaries
FROM 'C:\Users\eustudyassist\Documents\SQL-ESSENTIALS-DATA\data\eustudyassist-pry-school\teachers_salaries.csv'
WITH (FORMAT CSV, HEADER, DELIMITER ';'); -- wrong

COPY teachers_salaries (town, name, salary, benefits)
FROM 'C:\Users\eustudyassist\Documents\SQL-ESSENTIALS-DATA\data\eustudyassist-pry-school\teachers_salaries.csv'
WITH (FORMAT CSV, HEADER, DELIMITER ';');

SELECT * 
FROM teachers_salaries;

DELETE FROM teachers_salaries; -- delete values

-- Import with default
/* Default values are non-variance/no variance values */

/* 
# Steps
1. Create temporary table
2. Make it exactly like the main table teachers_salaries
3. Copy Values into temp_table
4. Insert values into main_table
*/

CREATE TEMPORARY TABLE teachers_salaries_temp (
	LIKE teachers_salaries INCLUDING ALL
);

SELECT *
FROM teachers_salaries_temp;

COPY teachers_salaries_temp (name, salary, benefits)
FROM 'C:\Users\eustudyassist\Documents\SQL-ESSENTIALS-DATA\data\eustudyassist-pry-school\teachers_salaries.csv'
WITH (FORMAT CSV, HEADER, DELIMITER ';');

INSERT INTO teachers_salaries (town, name, salary, benefits)
SELECT 'Ado Odo', name, salary, benefits
FROM teachers_salaries_temp;

SELECT *
FROM teachers_salaries;

SELECT 
	name, salary
FROM teachers_salaries
WHERE salary < 50000;

-- export tables
/* 
EXPORT
- whole tables
- select columns
- rows of interest/query result
*/

-- export whole table
COPY teachers_salaries
TO 'C:\Users\eustudyassist\Documents\SQL-ESSENTIALS-DATA\data\eustudyassist-pry-school\teachers_salaries_updated.csv'
WITH (FORMAT CSV, HEADER, DELIMITER ';');

-- export only columns
COPY teachers_salaries (town, name)
TO 'C:\Users\eustudyassist\Documents\SQL-ESSENTIALS-DATA\data\eustudyassist-pry-school\name_and_towns.csv'
WITH (FORMAT CSV, HEADER, DELIMITER ';');

-- export query result
COPY (
	SELECT *
	FROM teachers_salaries
	WHERE salary > 40000;
)
TO 'C:\Users\eustudyassist\Documents\SQL-ESSENTIALS-DATA\data\eustudyassist-pry-school\high_earners.csv'
WITH (FORMAT CSV, HEADER, DELIMITER ';');

-- Maths in SQL 

SELECT 2 / 2 AS divison;

SELECT 
	name,
	salary,
	benefits + salary AS total_pay
FROM teachers_salaries;