-- Descomente e altere as linhas abaixo:

DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;

CREATE TABLE users 
(
    user_id	INT,
    user_full_name	VARCHAR(512),
    user_age	INT,
    plan_id	VARCHAR(512),
    signature_date	VARCHAR(512)
) engine = InnoDB;

CREATE TABLE artists_followers
(
    artists_followers_id	INT,
    user_id	INT,
    artist_id	INT
) engine = InnoDB;

CREATE TABLE plans 
(
    plan_id	INT,
    plan	VARCHAR(512),
    plan_value	DOUBLE
) engine = InnoDB;

CREATE TABLE playback_history
(
    playback_id	INT,
    song_id	INT,
    playing_date	VARCHAR(512),
    user_id	INT
) engine = InnoDB;

CREATE TABLE artists
(
    artist_id	INT,
    artist_name	VARCHAR(512)
) engine = InnoDB;

CREATE TABLE albuns 
(
    album_id	INT,
    album_name	VARCHAR(512),
    artist_id	INT,
    release_year	INT
) engine = InnoDB;

CREATE TABLE songs 
(
    song_id	INT,
    song_name	VARCHAR(512),
    song_duration	INT,
    album_id	INT
) engine = InnoDB;

-- CREATE TABLE SpotifyClone.tabela2(
--     coluna1 tipo restricoes,
--     coluna2 tipo restricoes,
--     colunaN tipo restricoes,
-- ) engine = InnoDB;
INSERT INTO users (user_id, user_full_name, user_age, plan_id, signature_date) VALUES
	('1', 'Barbara Liskov', '82', '2', '2019-10-20'),
	('2', 'Robert Cecil Martin', '58', '2', '2017-01-06'),
	('3', 'Ada Lovelace', '37', '1', '2017-12-30'),
	('4', 'Martin Fowler', '46', '1', '2017-01-17'),
	('5', 'Sandi Metz', '58', '1', '2018-04-29'),
	('6', 'Paulo Freire', '19', '4', '2018-02-14'),
	('7', 'Bell Hooks', '26', '4', '2018-01-05'),
	('8', 'Christopher Alexander', '85', '3', '2019-06-05'),
	('9', 'Judith Butler', '45', '3', '2020-05-13'),
	('10', 'Jorge Amado', '58', '3', '2017-02-17');

INSERT INTO artists_followers (artists_followers_id, user_id, artist_id) VALUES
	('1', '1', '1'),
	('2', '1', '2'),
	('3', '1', '3'),
	('4', '2', '1'),
	('5', '2', '3'),
	('6', '3', '2'),
	('7', '4', '4'),
	('8', '5', '5'),
	('9', '5', '6'),
	('10', '6', '1'),
	('11', '6', '6'),
	('12', '7', '6'),
	('13', '9', '3'),
	('14', '10', '2');  

INSERT INTO plans (plan_id, plan, plan_value) VALUES
	('1', 'familiar', '7.99'),
	('2', 'gratuito', '0'),
	('3', 'pessoal', '6.99'),
	('4', 'universitário', '5.99');

INSERT INTO playback_history (playback_id, song_id, playing_date, user_id) VALUES
	('1', '8', '2022-02-28 10:45:55', '1'),
	('2', '2', '2020-05-02 05:30:35', '1'),
	('3', '10', '2020-03-06 11:22:33', '1'),
	('4', '10', '2022-08-05 08:05:17', '2'),
	('5', '7', '2020-01-02 07:40:33', '2'),
	('6', '10', '2020-11-13 16:55:13', '3'),
	('7', '2', '2020-12-05 18:38:30', '3'),
	('8', '8', '2021-08-15 17:10:10', '4'),
	('9', '8', '2022-01-09 01:44:33', '5'),
	('10', '5', '2020-08-06 15:23:43', '5'),
	('11', '7', '2017-01-24 00:31:17', '6'),
	('12', '1', '2017-10-12 12:35:20', '6'),
	('13', '4', '2011-12-15 22:30:49', '7'),
	('14', '4', '2012-03-17 14:56:41', '8'),
	('15', '9', '2022-02-24 21:14:22', '9'),
	('16', '3', '2015-12-13 08:30:22', '10');  

INSERT INTO artists (artist_id, artist_name) VALUES
	('1', 'Beyoncé'),
	('2', 'Queen'),
	('3', 'Elis Regina'),
	('4', 'Baco Exu do Blues'),
	('5', 'Blind Guardian'),
	('6', 'Nina Simone');

INSERT INTO albuns (album_id, album_name, artist_id, release_year) VALUES
	('1', 'Renaissance', '1', '2022'),
	('2', 'Jazz', '2', '1978'),
	('3', 'Hot Space', '2', '1982'),
	('4', 'Falso Brilhante', '3', '1998'),
	('5', 'Vento de Maio', '3', '2001'),
	('6', 'QVVJFA?', '4', '2003'),
	('7', 'Somewhere Far Beyond', '5', '2007'),
	('8', 'I Put A Spell On You', '6', '2012');  

INSERT INTO songs (song_id, song_name, song_duration, album_id) VALUES
	('1', 'BREAK MY SOUL', '279', '1'),
	('2', "VIRGO'S GROOVE", '369', '1'),
	('3', 'ALIEN SUPERSTAR', '116', '1'),
	('4', "Don't Stop Me Now", '203', '2'),
	('5', 'Under Pressure', '152', '3'),
	('6', 'Como Nossos Pais', '105', '4'),
	('7', 'O Medo de Amar é o Medo de Ser Livre', '207', '5'),
	('8', 'Samba em Paris', '267', '6'),
	('9', "The Bard's Song", '244', '7'),
	('10', 'Feeling Good', '100', '8');  
-- INSERT INTO SpotifyClone.tabela2 (coluna1, coluna2)
-- VALUES
--   ('exemplo de dados 1', 'exemplo de dados X'),
--   ('exemplo de dados 2', 'exemplo de dados Y');
