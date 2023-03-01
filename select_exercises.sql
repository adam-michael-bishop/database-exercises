USE ymir_adam;
SELECT album_name AS "The name of all albums by Pink Floyd"
FROM albums
WHERE artist = "Pink Floyd";

SELECT release_date AS "The year Sgt. Pepper\'s Lonely Hearts Club Band was released"
FROM albums
WHERE album_name = "Sgt. Pepper\'s Lonely Hearts Club Band";

SELECT genre AS "The genre for Sgt. Pepper\'s Lonely Hearts Club Band"
FROM albums
WHERE album_name = "Sgt. Pepper\'s Lonely Hearts Club Band";

SELECT *
FROM albums
WHERE release_date BETWEEN 1990 AND 1999;

SELECT *
FROM albums
WHERE sales < 20.000000;

SELECT *
FROM albums
WHERE genre = "Rock";