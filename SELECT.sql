SELECT name, year FROM Album
WHERE YEAR = 2018;


SELECT name , duration FROM Track
ORDER BY duration DESC;


SELECT name FROM track
WHERE duration > 3.5;


SELECT name FROM Collection
WHERE year BETWEEN 2018 AND 2020;


SELECT name FROM singer
WHERE name NOT LIKE '% %';


SELECT name FROM track
WHERE name LIKE '%my%';