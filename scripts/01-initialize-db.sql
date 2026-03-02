-- Initiate database creation
CREATE DATABASE flight_analysis;

CREATE TABLE airlines (
	carrier CHAR(2),
	name TEXT
);

SELECT *
FROM airlines;

COPY airlines /*copy table_name*/
FROM 'C:\Users\eustudyassist\Documents\new-york-flight-analysis\data\airlines.csv'
WITH (FORMAT CSV, HEADER);

CREATE TABLE airports (
	sn SMALLINT,
	faa CHAR(3),
	name TEXT,
	lat NUMERIC(12, 8),
	lon NUMERIC(12, 8),
	alt REAL,
	tz SMALLINT,
	dst VARCHAR(4),
	tzone VARCHAR(100)
);


DROP TABLE airports;

COPY airports
FROM 'C:\Users\eustudyassist\Documents\new-york-flight-analysis\data\airports.csv'
WITH (FORMAT CSV, HEADER, NULL 'NA');


SELECT *
FROM airports;