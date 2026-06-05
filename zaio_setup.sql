--Task 1:
CREATE DATABASE zaio_bootcamp;


--Task 2:
CREATE TABLE zaio_students (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(100) not null,
    bootcamp_track VARCHAR(50) not null,
    cohort_year int default 2026
);

--Task 3:
COPY zaio_students(full_name, bootcamp_track, cohort_year)
FROM  '/Users/mac/Documents/Databases/Zaio databsae assignment/zaio_50_students_data.txt'
DELIMITER ',' 
CSV HEADER;


--Task 4.1
SELECT COUNT(full_name)
FROM zaio_students;

--Task 4.2
SELECT bootcamp_track, COUNT(bootcamp_track)
FROM zaio_students
GROUP BY bootcamp_track
ORDER BY COUNT(bootcamp_track) DESC;
