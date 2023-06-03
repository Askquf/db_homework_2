CREATE TABLE IF NOT EXISTS genre(
	genre_id serial PRIMARY KEY,
	name varchar(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS artist(
	artist_id serial PRIMARY KEY,
	name varchar(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS album(
	album_id serial PRIMARY KEY,
	name varchar(40) NOT NULL,
	release_year integer
);

CREATE TABLE IF NOT EXISTS track(
	track_id serial PRIMARY KEY,
	name varchar(40) NOT NULL,
	duration integer,
	album_id integer references album(album_id)
);

CREATE TABLE IF NOT EXISTS compilation(
	compilation_id serial PRIMARY KEY,
	name varchar(40) NOT NULL,
	release_year integer
);

CREATE TABLE IF NOT EXISTS genre_artist(
	id_genre_artist serial PRIMARY KEY,
	genre_id integer references genre(genre_id),
	artist_id integer references artist(artist_id)
);

CREATE TABLE IF NOT EXISTS artist_album(
	id_artist_album serial PRIMARY KEY,
	artist_id integer references artist(artist_id),
	album_id integer references album(album_id)
);

CREATE TABLE IF NOT EXISTS compilation_track(
	id_compilation_track serial PRIMARY KEY,
	compilation_id integer references compilation(compilation_id),
	track_id integer references track(track_id)
);