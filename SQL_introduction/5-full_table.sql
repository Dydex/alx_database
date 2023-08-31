-- This script prints the full description of the table
-- CREATE DATABASE hbtn_0c_0;
USE hbtn_0c_0;
CREATE TABLE IF NOT EXISTS first_table (id INT, name VARCHAR(256));
SELECT COLUMN_NAME, COLUMN_TYPE, COLUMN_KEY, IS_NULLABLE, COLUMN_DEFAULT
FROM information_schema.COLUMNS
WHERE TABLE_SCHEMA = 'hbtn_0c_0' AND TABLE_NAME = 'first_table'; 