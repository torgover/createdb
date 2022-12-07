CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	name varchar(55) NOT NULL
);


CREATE TABLE IF NOT EXISTS Singer (
	id SERIAL PRIMARY KEY,
	name varchar(55) NOT NULL
);



CREATE TABLE IF NOT EXISTS GenreSinger (
	Genre_id int REFERENCES Genre (id),
	Singer_id int REFERENCES Singer (id),
	CONSTRAINT pk_GenreSinger PRIMARY KEY (Genre_id, Singer_id)
);



CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	name varchar(55) NOT NULL,
	year int NOT NULL
);



CREATE TABLE IF NOT EXISTS AlbumSinger (
	Album_id int REFERENCES Album (id),
	Singer_id int REFERENCES Singer (id),
	CONSTRAINT pk_AlbumSinger PRIMARY KEY (Album_id, Singer_id)
);


CREATE TABLE IF NOT EXISTS Track (
	id SERIAL PRIMARY KEY,
	name varchar(55) NOT NULL,
	duration int NOT NULL,
	Album_id int REFERENCES Album (id)
);



CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	name varchar(55) NOT NULL,
	year int NOT NULL
);



CREATE TABLE IF NOT EXISTS TrackCollection (
	Track_id int REFERENCES Track (id),
	Collection_id int REFERENCES Collection (id),
	CONSTRAINT pk_TrackCollection PRIMARY KEY (Track_id, Collection_id)
);

