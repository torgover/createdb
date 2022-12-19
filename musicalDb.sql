CREATE TABLE IF NOT EXISTS Genre (
	id_genre SERIAL PRIMARY KEY,
	genre_name varchar(55) NOT NULL
);


CREATE TABLE IF NOT EXISTS Singer (
	id_singer SERIAL PRIMARY KEY,
	singer_name varchar(55) NOT NULL
);



CREATE TABLE IF NOT EXISTS GenreSinger (
	id_genre int REFERENCES Genre (id_genre),
	id_singer int REFERENCES Singer (id_singer),
	CONSTRAINT pk_GenreSinger PRIMARY KEY (id_genre, id_singer)
);



CREATE TABLE IF NOT EXISTS Album (
	id_album SERIAL PRIMARY KEY,
	album_name varchar(55) NOT NULL,
	album_year int NOT NULL
);



CREATE TABLE IF NOT EXISTS AlbumSinger (
	id_album int REFERENCES Album (id_album),
	id_singer int REFERENCES Singer (id_singer),
	CONSTRAINT pk_AlbumSinger PRIMARY KEY (id_album, id_singer)
);


CREATE TABLE IF NOT EXISTS Track (
	id_track SERIAL PRIMARY KEY,
	track_name varchar(55) NOT NULL,
	track_duration int NOT NULL,
	id_album int REFERENCES Album (id_album)
);



CREATE TABLE IF NOT EXISTS Collection (
	id_collection SERIAL PRIMARY KEY,
	collection_name varchar(55) NOT NULL,
	collection_year int NOT NULL
);



CREATE TABLE IF NOT EXISTS TrackCollection (
	id_track int REFERENCES Track (id_track),
	id_collection int REFERENCES Collection (id_collection),
	CONSTRAINT pk_TrackCollection PRIMARY KEY (id_track, id_collection)
);