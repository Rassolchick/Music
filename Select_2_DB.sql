SELECT g.name, COUNT(musician_id) FROM Genres-Muscians gm
LEFT JOIN Genres g ON gm.genre_id = g.id
GROUP BY g.name;


SELECT COUNT(t.id) FROM Tracks t
LEFT JOIN Albums a ON t.album_id = a.id
WHERE a.year_of BETWEEN 2019 AND 2020;


SELECT a.name, avg(s.duration) FROM Tracks t
LEFT JOIN Albus a ON t.album_id = a.id
GROUP BY a.id;


SELECT name FROM Musicians m2 
EXCEPT
SELECT m.name FROM Musicians_Albums ma
JOIN Albums a ON a.id = ma.album_id
JOIN Musicians m ON m.id = ma.band_id 
WHERE a.year_of = 2020


SELECT DISTINCT comp.name FROM Compilations comp 
JOIN Tracks-Compilations tc ON tc.compilation_id  = comp.id 
JOIN Tracks t ON t.id = tc.song_id 
JOIN Albums a ON a.id = t.album_id 
JOIN Musicians_Albums ma ON ma.album_id = a.id 
JOIN Musicians m ON m.id = ma.band_id
WHERE m.name = 'Trivium'


SELECT a.name, count(g.name) FROM Albums a 
JOIN Musicians_Albums ma ON ma.album_id = a.id 
JOIN Musicians m ON m.id = ma.band_id 
JOIN Genres-Muscians gm ON gm.band_id = m.id 
JOIN Genres g ON g.id = gm.genre_id 
GROUP BY a.name 
HAVING count(g.name) > 1


SELECT t.name FROM Tracks t
LEFT JOIN Tracks-Compilations tc ON tc.song_id = t.id 
WHERE tc.compilation_id IS NULL


SELECT t.name FROM Tracks t
WHERE t.duration = (SELECT MIN(duration) FROM Tracks);


SELECT a.name, count(t.id)  FROM Albums a 
JOIN Tracks t ON t.album_id = a.id 
GROUP BY a.id 
HAVING count(t.id) = 
	(SELECT count(t.id)  FROM Albums a 
	JOIN Tracks t ON t.album_id = a.id 
	GROUP BY a.id 
	ORDER BY count(t.id)
	LIMIT 1)