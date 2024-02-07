--Задание 2

--Название и продолжительность самого длительного трека
SELECT "name" , duration_sec FROM tracks t 
WHERE duration_sec = (SELECT max(duration_sec) FROM tracks);

--Название треков, продолжительность которых больше 3.5 минут
SELECT "name" , duration_sec FROM tracks t 
WHERE duration_sec > 210

--Названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT "name"  FROM collections c 
WHERE "year"  >= '2018' AND "year"  <= '2019'

--Исполнители, чьё имя состоит из одного слова
SELECT "name"  FROM musicians m 
WHERE NOT "name" LIKE '% %';

--Название треков, которые содержат слово «мой» или «my»
SELECT "name" FROM tracks t 
WHERE "name" LIKE '%мой%' OR "name" LIKE '%My%'

--Задание 3

--Количество исполнителей в каждом жанре

SELECT g."name", count(mg.musician_id) FROM musicians_genres mg 
LEFT JOIN genres g ON mg.genre_id = g.id 
GROUP BY g.id
ORDER BY count(mg.musician_id) DESC;



--Количество треков, вошедших в альбомы 2019-2020 годов
SELECT a."name", count(t.id) FROM tracks t
LEFT JOIN albums a ON t.album_id  = a.id
WHERE "year"  >= '2019' and "year"  < '2021'
GROUP BY a."name";

--Средняя продолжительность треков по каждому альбому 
SELECT a."name" n, avg(duration_sec)/60 min FROM tracks t 
LEFT JOIN albums a on t.album_id = a.id
GROUP BY n 
ORDER BY min;


--Все исполнители которые не выпустили альбомы в 2020 году
SELECT m."name" FROM musicians m  
LEFT JOIN musicians_albums ma ON m.id = ma.musician_id 
LEFT JOIN albums a ON ma.album_id  = a.id
WHERE m."name" NOT IN (SELECT m."name" FROM musicians_albums WHERE "year" = '2020');


--Названия сборников, в которых присутствует конкретный исполнитель "Korn"
SELECT DISTINCT c."name"  FROM collections c  
LEFT JOIN tracks_collections tc ON tc.collection_id = c.id 
LEFT JOIN tracks t  ON tc.track_id = t.id 
LEFT JOIN albums a ON t.album_id  = a.id 
LEFT JOIN musicians_albums ma ON a.id = ma.album_id 
LEFT JOIN musicians m ON ma.musician_id  = m.id 
WHERE m."name" LIKE 'Kor%';