SELECT
AR.artist_name AS artista,
CASE
   WHEN COUNT(user_id) >= 5 THEN "A"
   WHEN COUNT(user_id) >= 3 THEN "B"
   WHEN COUNT(user_id) >= 1 THEN "C"
   WHEN COUNT(user_id) = 0 THEN "-"
 END AS ranking
FROM songs AS S
INNER JOIN albuns AS AL
ON S.album_id = AL.album_id
INNER JOIN artists AS AR
ON AL.artist_id = AR.artist_id
LEFT JOIN fav_songs AS FS
ON S.song_id = FS.song_id
GROUP BY AR.artist_name
ORDER BY COUNT(user_id) DESC, artista ASC; 