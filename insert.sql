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
	('Why?', 30, 8),
	('Tell me why', 82, 8),
	('I know why', 72, 8),
	('Banners on the wall', 160, 3),
	('третий трек', 59, 5),
	('нет серебра', 230, 5),
	('Моя любовь', 83, 2),
	('I', 60, 1),
	('II', 120, 1),
	('III', 180, 1),
	('Man without fear', 462, 4),
	('Old old day', 310, 4),
	('Hey', 111, 6),
	('My fault', 43, 6),
	('Here we go', 403, 7);

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
	(1, 7),
	(2, 5),
	(3, 3),
	(4, 1),
	(5, 8),
	(3, 4),
	(4, 6),
	(5, 6),
	(4, 2),
	(4, 8);

INSERT INTO artist_album (artist_id, album_id)
VALUES
	(1, 1),
	(2, 1),
	(3, 5),
	(3, 2),
	(4, 8),
	(5, 4),
	(6, 7),
	(7, 3),
	(8, 6);

INSERT INTO compilation_track (compilation_id, track_id)
VALUES
	(7, 15),
	(1, 1),
	(1, 2),
	(1, 3),
	(2, 8),
	(2, 9),
	(2, 10),
	(3, 5),
	(3, 6),
	(4, 4),
	(4, 7),
	(5, 11),
	(6, 14),
	(6, 13),
	(8, 12);