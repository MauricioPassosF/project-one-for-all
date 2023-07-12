SELECT 
U.user_full_name AS pessoa_usuaria, 
IF(YEAR(MAX(PBH.playing_date)) > 2020, 'Ativa', 'Inativa') AS status_pessoa_usuaria
FROM playback_history AS PBH
INNER JOIN users AS U
ON PBH.user_id = U.user_id
GROUP BY U.user_full_name
ORDER BY U.user_full_name ASC;