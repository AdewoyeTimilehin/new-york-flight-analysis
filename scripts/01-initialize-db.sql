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

DROP TABLE weather;

CREATE TABLE weather(
		sn SMALLINT,
		origin CHAR(3),
		year INT,
		month SMALLINT,
		day INT,
		hour INT,
		temp REAL,
		dewp REAL,
		humid REAL,
		wind_dir INT,
		wind_speed NUMERIC(10, 7),
		wind_gust NUMERIC(15, 12),
		precip REAL,
		pressure REAL,
		visib REAL,
		time_hour TIMESTAMP
);

COPY weather
FROM 'C:\Users\HomePC\Documents\SQL\new-york-flight-analysis\data\weather.csv'
WITH (FORMAT CSV, HEADER, NULL 'NA');

SELECT *
FROM weather;


DROP TABLE flights;

CREATE TABLE flights(
		sn INT,
		year INT,
		month SMALLINT,
		day INT,
		dep_time INT,
		sched_dep_time INT,
		dep_delay INT,
		arr_time INT,
		sched_arr_time INT,
		arr_delay INT,
		carrier CHAR(2),
		flight INT,
		tailnum CHAR(6),
		origin CHAR(3),
		dest CHAR(3),
		air_time INT,
		distance INT,
		hour INT,
		minute INT,
		time_hour TIMESTAMP
);


COPY flights
FROM 'C:\Users\HomePC\Documents\SQL\new-york-flight-analysis\data\flights.csv'
WITH (FORMAT CSV, HEADER, NULL 'NA');

SELECT *
FROM flights;