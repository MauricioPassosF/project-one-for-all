SELECT
COUNT(PBH.song_id) AS musicas_no_historico
FROM users AS U
INNER JOIN playback_history AS PBH
ON U.user_id = PBH.user_id
WHERE U.user_full_name = 'Barbara Liskov'
GROUP BY U.user_full_name;