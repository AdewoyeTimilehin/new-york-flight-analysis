-- Initiate database creation
CREATE DATABASE flight_analysis;

CREATE TABLE airlines (
	carrier CHAR(2),
	name TEXT
);

SELECT *
FROM airlines;

COPY airlines /*copy table_name*/
FROM 'C:\Users\HomePC\Documents\SQL\new-york-flight-analysis\data\airlines.csv'
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
FROM 'C:\Users\HomePC\Documents\SQL\new-york-flight-analysis\data\airports.csv'
WITH (FORMAT CSV, HEADER, NULL 'NA');


SELECT *
FROM airports;



DROP TABLE planes;
CREATE TABLE planes(
          sn SMALLINT,
          tailnum CHAR(6),
   		  year INT,
          type VARCHAR(50),
          manufacturer VARCHAR(50),
          model VARCHAR(50),
		  engines CHAR(1),
		  seats SMALLINT,
		  speed SMALLINT,
		  engine VARCHAR(50)
);

COPY planes
FROM 'C:\Users\HomePC\Documents\SQL\new-york-flight-analysis\data\planes.csv'
WITH (FORMAT CSV, HEADER, NULL 'NA');

SELECT *
FROM planes;