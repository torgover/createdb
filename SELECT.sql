--название и год выхода альбомов, вышедших в 2018 году
SELECT album_name, album_year FROM Album
WHERE album_year = 2018;


--название и продолжительность самого длительного трека
SELECT track_name , track_duration FROM Track
ORDER BY track_duration DESC;


--название треков, продолжительность которых не менее 3,5 минуты
SELECT track_name FROM track
WHERE track_duration > 3.5;


--названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT collection_name FROM Collection
WHERE collection_year BETWEEN 2018 AND 2020;


--исполнители, чье имя состоит из 1 слова
SELECT singer_name FROM singer
WHERE singer_name NOT LIKE '% %';


--название треков, которые содержат слово "мой"/"my"
SELECT track_name FROM track
WHERE track_name LIKE '%my%';




--количество исполнителей в каждом жанре 
SELECT genre_name, COUNT(id_singer) FROM Genre
JOIN GenreSinger ON Genre.id_genre = GenreSinger.id_genre 
GROUP BY genre_name;



--количество треков,вошедших в альбомы 2019-2020 годов
SELECT COUNT(album_name) FROM Track
JOIN Album ON Track.id_album = Album.id_album  
WHERE album_year >= 2019 AND album_year <= 2020;



--средняя продолжительность треков по каждому альбому
SELECT album_name, AVG(track_duration) From Track
JOIN Album ON Track.id_album  = Album.id_album 
GROUP BY album_name;


-- все исполнитель которые не выпустили альбомы в 2020 году
SELECT singer_name from Singer
JOIN AlbumSinger ON Singer.id_singer = AlbumSinger.id_singer
JOIN Album on Album.id_album  = AlbumSinger.id_album
WHERE album_year not between 2020 and  2021
GROUP BY singer_name;

--название сборников в которых присутсвует конкретный исполнитель
SELECT collection_name FROM Collection
JOIN TrackCollection ON trackcollection.id_track = collection.id_collection
JOIN Track ON trackcollection.id_track = track.id_track 
JOIN Album ON Track.id_track = Album.id_album 
JOIN AlbumSinger ON AlbumSinger.id_album = Album.id_album 
JOIN Singer ON AlbumSinger.id_singer  = Singer.id_singer 
WHERE singer_name = '2pac'
GROUP by collection_name;


--названия альбомов, в которых присутствуют исполнители более 1 жанра
SELECT album_name, COUNT(genre_name) FROM Album
JOIN AlbumSinger ON Album.id_album = AlbumSinger.id_album  
JOIN Singer ON AlbumSinger.id_singer = Singer.id_singer
JOIN GenreSinger ON Singer.id_singer = GenreSinger.id_singer 
JOIN Genre ON Genre.id_genre = GenreSinger.id_genre 
GROUP BY Album_name
HAVING COUNT(genre_name) > 1;

--названия треков,которые не входят в сборники
SELECT track_name FROM Track
LEFT JOIN TrackCollection ON Track.id_track = TrackCollection.id_track 
WHERE id_collection IS NULL;


--название альбомов,содержащих наименьшее количество треков
SELECT DISTINCT album_name FROM Album
JOIN Track ON Track.id_album  = Album.id_album 
WHERE Track.id_album  IN (
	SELECT id_album  FROM Track
	GROUP BY id_album 
	HAVING COUNT(id_album) = (
		SELECT COUNT(id_track) FROM Track
		GROUP BY id_album 
		ORDER BY COUNT
		LIMIT 1)
);