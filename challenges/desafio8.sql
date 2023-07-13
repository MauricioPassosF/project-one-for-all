SELECT
AR.artist_name AS artista,
AL.album_name AS album
FROM artists AS AR
INNER JOIN albuns AS AL
ON AR.artist_id = AL.artist_id
WHERE AR.artist_name = 'Elis Regina'
ORDER BY album ASC;