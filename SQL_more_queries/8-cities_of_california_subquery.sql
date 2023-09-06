-- This script lists all the cities of california on this database
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;

USE hbtn_0d_usa;

CREATE TABLE states (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(256) NOT NULL);

-- Find the state_id for california 
SELECT id INTO @california_state_id FROM states WHERE name = 'California';

CREATE TABLE cities (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(256) NOT NULL);

-- List all cities of california 
SELECT cities.name
FROM cities
WHERE cities.state_id = @california_state_id
ORDER BY cities.id ASC;
