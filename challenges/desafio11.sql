SELECT
AL.album_name AS album,
COUNT(FS.user_id) AS favoritadas
FROM songs AS S
INNER JOIN albuns AS AL
ON S.album_id = AL.album_id
INNER JOIN fav_songs AS FS
ON  S.song_id = FS.song_id
GROUP BY album
ORDER BY favoritadas DESC
LIMIT 3; 