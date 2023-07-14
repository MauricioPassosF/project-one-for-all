SELECT
CASE
   WHEN U.user_age <= 30 THEN "Até 30 anos"
   WHEN U.user_age <= 60 THEN "Entre 31 e 60 anos"
   ELSE "Maior de 60 anos"
END AS faixa_etaria,
COUNT(DISTINCT U.user_id) AS total_pessoas_usuarias,
CONVERT(SUM(IF (FS.song_id IS NULL, 0, 1)),SIGNED INTEGER) AS total_favoritadas
FROM users AS U
LEFT JOIN fav_songs AS FS
ON U.user_id = FS.user_id
GROUP BY faixa_etaria
ORDER BY faixa_etaria ASC; 