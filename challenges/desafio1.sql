-- Descomente e altere as linhas abaixo:

DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE plans 
(
    plan_id	INT NOT NULL AUTO_INCREMENT,
    plan VARCHAR(512),
    plan_value DOUBLE,
    PRIMARY KEY (plan_id)
) engine = InnoDB;

CREATE TABLE artists
(
    artist_id	INT NOT NULL AUTO_INCREMENT,
    artist_name	VARCHAR(512),
    PRIMARY KEY (artist_id)
) engine = InnoDB;

CREATE TABLE users 
(
    user_id	INT NOT NULL AUTO_INCREMENT,
    user_full_name VARCHAR(512),
    user_age INT,
    plan_id	INT,
    signature_date DATE,
    PRIMARY KEY (user_id),
    FOREIGN KEY (plan_id) REFERENCES plans(plan_id)
) engine = InnoDB;

CREATE TABLE albuns 
(
    album_id INT NOT NULL AUTO_INCREMENT,
    album_name VARCHAR(512),
    artist_id INT,
    release_year YEAR,
    PRIMARY KEY (album_id),
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
) engine = InnoDB;

CREATE TABLE songs 
(
    song_id	INT NOT NULL AUTO_INCREMENT,
    song_name	VARCHAR(512),
    song_duration	INT,
    album_id INT,
    PRIMARY KEY (song_id),
    FOREIGN KEY (album_id) REFERENCES albuns(album_id)
) engine = InnoDB;

CREATE TABLE artists_followers
(
    user_id	INT,
    artist_id INT,
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    PRIMARY KEY (user_id, artist_id)
) engine = InnoDB;

CREATE TABLE playback_history
(
    song_id	INT,
    playing_date DATETIME,
    user_id	INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (song_id) REFERENCES songs(song_id),
    PRIMARY KEY (song_id, user_id)
) engine = InnoDB;

INSERT INTO plans (plan, plan_value) VALUES
	('familiar', '7.99'),
	('gratuito', '0'),
	('pessoal', '6.99'),
	('universitário', '5.99');

INSERT INTO artists (artist_name) VALUES
	('Beyoncé'),
	('Queen'),
	('Elis Regina'),
	('Baco Exu do Blues'),
	('Blind Guardian'),
	('Nina Simone');

INSERT INTO users (user_full_name, user_age, plan_id, signature_date) VALUES
	('Barbara Liskov', '82', '2', '2019-10-20'),
	('Robert Cecil Martin', '58', '2', '2017-01-06'),
	('Ada Lovelace', '37', '1', '2017-12-30'),
	('Martin Fowler', '46', '1', '2017-01-17'),
	('Sandi Metz', '58', '1', '2018-04-29'),
	('Paulo Freire', '19', '4', '2018-02-14'),
	('Bell Hooks', '26', '4', '2018-01-05'),
	('Christopher Alexander', '85', '3', '2019-06-05'),
	('Judith Butler', '45', '3', '2020-05-13'),
	('Jorge Amado', '58', '3', '2017-02-17');  

INSERT INTO albuns (album_name, artist_id, release_year) VALUES
	('Renaissance', '1', '2022'),
	('Jazz', '2', '1978'),
	('Hot Space', '2', '1982'),
	('Falso Brilhante', '3', '1998'),
	('Vento de Maio', '3', '2001'),
	('QVVJFA?', '4', '2003'),
	('Somewhere Far Beyond', '5', '2007'),
	('I Put A Spell On You', '6', '2012');   

INSERT INTO songs (song_name, song_duration, album_id) VALUES
	('BREAK MY SOUL', '279', '1'),
	("VIRGO'S GROOVE", '369', '1'),
	('ALIEN SUPERSTAR', '116', '1'),
	("Don't Stop Me Now", '203', '2'),
	('Under Pressure', '152', '3'),
	('Como Nossos Pais', '105', '4'),
	('O Medo de Amar é o Medo de Ser Livre', '207', '5'),
	('Samba em Paris', '267', '6'),
	("The Bard's Song", '244', '7'),
	('Feeling Good', '100', '8');     

INSERT INTO artists_followers (user_id, artist_id) VALUES
	('1', '1'),
	('1', '2'),
	('1', '3'),
	('2', '1'),
	('2', '3'),
	('3', '2'),
	('4', '4'),
	('5', '5'),
	('5', '6'),
	('6', '1'),
	('6', '6'),
	('7', '6'),
	('9', '3'),
	('10', '2');    

INSERT INTO playback_history (song_id, playing_date, user_id) VALUES
	('8', '2022-02-28 10:45:55', '1'),
	('2', '2020-05-02 05:30:35', '1'),
	('10', '2020-03-06 11:22:33', '1'),
	('10', '2022-08-05 08:05:17', '2'),
	('7', '2020-01-02 07:40:33', '2'),
	('10', '2020-11-13 16:55:13', '3'),
	('2', '2020-12-05 18:38:30', '3'),
	('8', '2021-08-15 17:10:10', '4'),
	('8', '2022-01-09 01:44:33', '5'),
	('5', '2020-08-06 15:23:43', '5'),
	('7', '2017-01-24 00:31:17', '6'),
	('1', '2017-10-12 12:35:20', '6'),
	('4', '2011-12-15 22:30:49', '7'),
	('4', '2012-03-17 14:56:41', '8'),
	('9', '2022-02-24 21:14:22', '9'),
	('3', '2015-12-13 08:30:22', '10'); 