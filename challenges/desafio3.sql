SELECT 
U.user_full_name AS pessoa_usuaria, 
COUNT(PBH.song_id) AS musicas_ouvidas, 
ROUND(SUM(S.song_duration)/60, 2) AS total_minutos 
FROM playback_history AS PBH
INNER JOIN users AS U
ON PBH.user_id = U.user_id
INNER JOIN songs AS S
ON PBH.song_id = S.song_id
GROUP BY U.user_full_name
ORDER BY U.user_full_name ASC;