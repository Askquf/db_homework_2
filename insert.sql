INSERT INTO genre (name)
VALUES 
	('рок'),
	('джаз'),
	('поп'),
	('рэп'),
	('хип-хоп');
	
INSERT INTO artist (name)
VALUES
	('Dust'),
	('Cooper'),
	('Александр Владимиров'),
	('Яблоко'),
	('Grizlies'),
	('Dab bad'),
	('The gunners'),
	('Ezz');

INSERT INTO album (name, release_year)
VALUES
	('III', 2021),
	('Там далеко', 2023),
	('iron or stone', 2021),
	('God bless', 2018),
	('Золото золото золото', 2014),
	('Chill out', 2023),
	('Bansday', 2011),
	('Почему?', 2017);
	
INSERT INTO track (name, duration, album_id)
VALUES
	('Why?', 1.4, 24),
	('Tell me why', 3.6, 24),
	('I know why', 7, 24),
	('Banners on the wall', 3.4, 19),
	('третий трек', 5, 21),
	('нет серебра', 2.3, 21),
	('Моя любовь', 8.3, 18),
	('I', 1, 17),
	('II', 2, 17),
	('III', 3, 17),
	('Man without fear', 4.6, 20),
	('Old old day', 3, 20),
	('Hey', 2, 22),
	('My fault', 4.3, 22),
	('Here we go', 8.1, 23);

INSERT INTO compilation (name, release_year)
VALUES
	('Best Hits', 2023),
	('Best of Dust', 2022),
	('Songs you have to hear', 2021),
	('New and good', 2022),
	('The best of the best', 2019),
	('On the road', 2018),
	('Worst songs of 2011', 2011),
	('New pop hits', 2018);

INSERT INTO genre_artist (genre_id, artist_id)
VALUES
	(16, 23),
	(17, 21),
	(18, 19),
	(19, 17),
	(20, 24),
	(18, 20),
	(19, 22),
	(20, 22),
	(19, 18),
	(19, 24);

INSERT INTO artist_album (artist_id, album_id)
VALUES
	(17, 17),
	(18, 17),
	(19, 21),
	(19, 18),
	(20, 24),
	(21, 20),
	(22, 23),
	(23, 19),
	(24, 22);

INSERT INTO compilation_track (compilation_id, track_id)
VALUES
	(15, 60),
	(9, 46),
	(9, 47),
	(9, 48),
	(10, 53),
	(10, 54),
	(10, 55),
	(11, 50),
	(11, 51),
	(12, 49),
	(12, 52),
	(13, 56),
	(14, 59),
	(14, 58),
	(16, 57);
