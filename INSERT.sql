INSERT INTO Singer (id, name)
VALUES
	(1, '2pac'),
	(2, 'noize mc'),
	(3, 'singer3'),
	(4, 'singer4'),
	(5, 'singer5'),
	(6, 'singer6'),
	(7, 'singer7'),
	(8, 'singer8')
;


INSERT INTO Genre (id, name)
VALUES
	(1, 'hip hop'),
	(2, 'рэп рок'),
	(3, 'genre1'),
	(4, 'genre2'),
	(5, 'genre3')
;

INSERT INTO Album (id, name, year)
VALUES
	(1, 'all eyez on me', 1996),
	(2, 'Неразбериха', 2013),
	(3, 'album3', 2000),
	(4, 'album4', 2005),
	(5, 'album5', 2003),
	(6, 'album6', 1988),
	(7, 'album7', 2015),
	(8, 'album8', 2008)
;


INSERT INTO Track (id, name, duration, album_id)
VALUES
	(1, 'California love', 6.25, 1),
	(2, 'Нету Паспорта', 4.00, 2),
	(3, 'track3', 3.25, 3),
	(4, 'track4', 3.26, 4),
	(5, 'track5', 3.27, 5),
	(6, 'track6', 3.28, 6),
	(7, 'track7', 3.28, 7),
	(8, 'track8', 3.29, 8),
	(9, 'track9', 3.30, 3),
	(10, 'track10', 3.31, 4),
	(11, 'track11', 3.32, 5),
	(12, 'track12', 3.33, 6),
	(13, 'track13', 3.34, 7),
	(14, 'track14', 3.35, 8),
	(15, 'track15', 3.36, 5),
	(16, 'my track16', 3.37, 5)
;  

INSERT INTO Collection (id, name, year)
VALUES 
	(1, 'collection1', 2000),
	(2, 'collection2', 2001),
	(3, 'collection3', 2002),
	(4, 'collection4', 2003),
	(5, 'collection5', 2004)
;