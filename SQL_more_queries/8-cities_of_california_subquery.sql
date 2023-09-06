-- This script lists all the cities of california on this database
USE hbtn_0d_usa;

-- Find the state_id for california 
SELECT id INTO @california_state_id FROM states name = 'California';

-- List all cities of california 
SELECT cities.name
FROM cities
WHERE cities.state_id = @california_state_id
ORDER BY cities.id ASC;
