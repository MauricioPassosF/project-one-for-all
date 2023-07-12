SELECT 
S.song_name AS cancao, 
COUNT(PBH.user_id) AS reproducoes
FROM playback_history AS PBH
INNER JOIN songs AS S
ON PBH.song_id = S.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;