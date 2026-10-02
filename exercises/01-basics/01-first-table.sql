-- =============================================================
-- Exercise 01 - First table
-- Topics: CREATE TABLE, INSERT, SELECT
-- =============================================================

-- Remove the table if it already exists, so this script can be re-run
DROP TABLE IF EXISTS students;

-- Create a table
--   SERIAL       -> integer that increases automatically (1, 2, 3...)
--   PRIMARY KEY  -> unique identifier for each row
--   VARCHAR(100) -> text with up to 100 characters
CREATE TABLE students (
    id     SERIAL PRIMARY KEY,
    name   VARCHAR(100) NOT NULL,
    course VARCHAR(100)
);

-- Insert rows (id is generated automatically)
INSERT INTO students (name, course) VALUES
    ('Ana',   'Systems Analysis'),
    ('Bruno', 'Software Engineering'),
    ('Carla', 'Systems Analysis');

-- Read every column of every row
SELECT * FROM students;

-- Read only some columns
SELECT name, course FROM students;
