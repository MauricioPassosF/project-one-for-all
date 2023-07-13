-- Descomente e altere as linhas abaixo:

USE SpotifyClone;

CREATE TABLE fav_songs
(
    song_id	INT,
    user_id	INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (song_id) REFERENCES songs(song_id),
    PRIMARY KEY (song_id, user_id)
) engine = InnoDB;

INSERT INTO fav_songs (user_id, song_id) VALUES
	('1', '3'),
	('1', '6'),
	('1', '10'),
	('2', '4'),
	('3', '1'),
	('3', '3'),
	('4', '4'),
	('4', '7'),
	('5', '10'),
	('5', '2'),
	('8', '4'),
	('9', '7'),
	('10', '3');       
