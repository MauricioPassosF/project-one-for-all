SELECT
AR.artist_name AS artista,
AL.album_name AS album,
COUNT(AF.user_id) AS pessoas_seguidoras
FROM artists AS AR
INNER JOIN albuns AS AL
ON AR.artist_id = AL.artist_id
INNER JOIN artists_followers AS AF
ON AR.artist_id = AF.artist_id
GROUP BY artista,album
ORDER BY pessoas_seguidoras DESC, artista ASC, album ASC;