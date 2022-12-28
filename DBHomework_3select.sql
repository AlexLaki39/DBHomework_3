-- название и год выхода альбомов, вышедших в 2018 году
SELECT album_name, production_year FROM albums
WHERE production_year = 2018;

-- название и продолжительность самого длительного трека
SELECT track_name, length_track FROM tracks
ORDER BY length_track DESC
LIMIT 1;

-- название треков, продолжительность которых не менее 3,5 минуты
SELECT track_name FROM tracks
WHERE length_track >= 3.5;

-- названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT name_collection FROM collections
WHERE production_year BETWEEN 2018 AND 2020;

-- исполнители, чье имя состоит из 1 слова
SELECT singer_id, singer_name FROM singers
WHERE singer_name NOT LIKE '%% %%';

-- название треков, которые содержат слово "мой"/"my"
SELECT track_name FROM tracks
WHERE lower(track_name) LIKE '%my%' OR lower(track_name) LIKE '%мой%';
