SELECT name, year_of  FROM Albums
where year_of = 2018;

SELECT name, duration FROM Tracks
order by duration desc 
limit 1;

SELECT name  FROM Tracks
where duration >= 3.5*60;

SELECT name, year_of  FROM Compilations
where year_of BETWEEN 2018 and 2021;

SELECT name  FROM Musicians
where name not like '% %';

SELECT name FROM Tracks
WHERE LOWER(name) like '%my%' or LOWER(name) like '%мой%';