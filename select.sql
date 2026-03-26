-- Задание 2

-- Название и продолжительность самого длительного трека.
SELECT track_name, duration
FROM track 
ORDER BY duration DESC
LIMIT 1;

-- Название треков, продолжительность которых не менее 3,5 минут.
SELECT track_name
FROM track
WHERE duration >= '00:03:30';

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT collection_name
FROM list_collection
WHERE release_year BETWEEN '2018-01-01' AND '2020-12-31';

-- Исполнители, чьё имя состоит из одного слова.
SELECT name_performers
FROM list_performers
WHERE name_performers NOT LIKE '% %';

-- Название треков, которые содержат слово «мой» или «my».
SELECT track_name
FROM track
WHERE track_name LIKE '%мой%' OR track_name LIKE '%my%';

-- Задание 3. Количество исполнителей в каждом жанре.
SELECT genre_name, COUNT(performers_id) AS count_performers
FROM list_genres g
JOIN genres_performers gp ON g.genres_id = gp.genres_id
GROUP BY genre_name;

-- Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT COUNT(track_id) AS count_tracks
FROM track t
JOIN album_list a ON t.album_id = a.album_id
WHERE a.year_release BETWEEN '2019-01-01' AND '2020-12-31';

-- Средняя продолжительность треков по каждому альбому.
SELECT album_name, AVG(duration) AS avg_duration
FROM album_list a
JOIN track t ON a.album_id = t.album_id
GROUP BY album_name;

-- Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT DISTINCT p.name_performers
FROM list_performers p
LEFT JOIN albums_performers ap ON p.performers_id = ap.performers_id
LEFT JOIN album_list a ON ap.album_id = a.album_id AND a.year_release BETWEEN '2020-01-01' AND '2020-12-31'
WHERE a.album_id IS NULL;

-- Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT DISTINCT lc.collection_name
FROM list_collection lc
JOIN collections_tracks ct ON lc.collection_id = ct.collection_id
JOIN track t ON ct.track_id = t.track_id
JOIN album_list a ON t.album_id = a.album_id
JOIN albums_performers ap ON a.album_id = ap.album_id
JOIN list_performers p ON ap.performers_id = p.performers_id
WHERE p.name_performers = 'Скриптонит';
