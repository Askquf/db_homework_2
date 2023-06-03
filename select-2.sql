SELECT g.name, COUNT(*) FROM genre as g
LEFT JOIN genre_artist g_a ON g.genre_id = g_a.genre_id
LEFT JOIN artist a ON a.artist_id = g_a.artist_id
GROUP BY g.name;

SELECT COUNT(*) FROM track t
JOIN album al ON al.album_id = t.album_id
WHERE al.release_year BETWEEN 2019 AND 2020;

SELECT AVG(t.duration), al.name FROM track t
JOIN album al ON al.album_id = t.album_id
GROUP BY al.name;

SELECT a.name from artist a
WHERE a.name NOT IN (SELECT DISTINCT a.name n FROM artist a
LEFT JOIN artist_album a_a ON a_a.artist_id = a.artist_id
JOIN album al ON al.album_id = a_a.album_id
WHERE al.release_year = 2018);

SELECT DISTINCT c.name FROM compilation c
JOIN compilation_track c_t ON c_t.compilation_id = c.compilation_id
JOIN track t ON t.track_id = c_t.track_id
JOIN artist_album a_a ON a_a.album_id = t.album_id
JOIN artist a ON a.artist_id = a_a.artist_id
WHERE a.name = 'Dust';

SELECT DISTINCT a.name from album a 
JOIN artist_album a_a ON a_a.album_id = a.album_id 
JOIN artist ar ON ar.artist_id = a_a.artist_id 
JOIN genre_artist g_a ON g_a.artist_id = ar.artist_id 
GROUP BY a.name, g_a.artist_id
HAVING COUNT(g_a.artist_id) > 1; 

SELECT s.name from (SELECT t.name, c_t.compilation_id c_id FROM track t
LEFT JOIN compilation_track c_t on c_t.track_id = t.track_id) s
WHERE s.c_id IS NULL;

SELECT a.name FROM artist a
JOIN artist_album a_a ON a_a.artist_id = a.artist_id
JOIN track t ON t.album_id = a_a.album_id
WHERE t.duration = (SELECT MIN(duration) FROM track);

SELECT al.name from album al 
JOIN track t ON al.album_id = t.album_id 
GROUP BY al.album_id
HAVING COUNT(t.*) = ( 
    SELECT COUNT(t.*) FROM track t 
    GROUP BY album_id 
    ORDER BY 1
    LIMIT 1 
);



/*
    Количество исполнителей в каждом жанре.
    Количество треков, вошедших в альбомы 2019–2020 годов.
    Средняя продолжительность треков по каждому альбому.
    Все исполнители, которые не выпустили альбомы в 2020 году.
    Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
    Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
    Наименования треков, которые не входят в сборники.
    Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.
    Названия альбомов, содержащих наименьшее количество треков.

*/