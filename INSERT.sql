--insert genres
INSERT INTO genres(name)
	VALUES
	('Hip Hap'),
	('Rock'),
	('Raggae'),
	('Pop'),
	('Rap'),
	('Electric');
--insert musicians
INSERT INTO musicians(name)
	VALUES
	('Sam Smith'),
	('Alan Walker'),
	('Greta Van Fleet'),
	('Maroon 5'),
	('A$AP Rocky'),
	('Mary J. Blige'),
	('John Legend'),
	('Disclosure'),
	('Korn'),
	('Slipknot'),
	('Kanye West'),
	('The Smashing Pumpkins'),
	('Pop Smoke');
--insert albums
INSERT INTO albums(name,year)
	VALUES
	('Ye', 2018),
	('Testing', 2019),
	('Anthem of the Peaceful Army', 2019),
	('The Nothing', 2019),
	('We Are Not Your Kind', 2019)
	('Memories', 2020);
--insert collections
INSERT INTO collections(name,year)
	VALUES
	('Hip Hop Sound Bites,Vol.1',2017),
	('Best Of Rock',2018),
	('Рок 2020 Главные Хиты',2020),
	('Reggae Greats',2020),
	('Electric Sound Bites,Vol.2',2019);
--insert tracks
INSERT INTO tracks("name" , album_id , duration_sec)
	values
	('The Track2', 2, 243),
	('The Track', 1, 253),
	('When The Curtain Falls', 3, 223),
	('Insert Coin', 5, 98),
	('Red Flag', 5, 251),
	('Critical Darling', 5, 385),
	('The End Begins', 4, 91),
	('Cold', 4, 226),
	('You are The One', 3, 267)
	('My Pain', 5, 408)
	('The Track3', 2, 343);
--insert musicians_albums
INSERT INTO musicians_albums(album_id ,musician_id)
	VALUES
	(3, 3),
	(1, 10),
	(4, 8),
	(5, 9)
	(6, 4);
--insert tracks_collections
INSERT INTO tracks_collections(track_id  ,collection_id)
	VALUES
--	(1, 2),
--	(2, 2),
--	(3, 2),
--	(4, 2),
--	(7, 2),
--	(5, 5),
--	(6, 5),
	(2, 3),
	(3, 3);

--insert musicians_genres

--Hip Hap
INSERT INTO musicians_genres(musician_id  ,genre_id)
	VALUES
	(1, 1),
	(2, 1),
	(5, 1),
	(13, 1);
--Rap
INSERT INTO musicians_genres(musician_id  ,genre_id)
	VALUES
	(1, 5),
	(5, 5),
	(11, 5);
--Rock
INSERT INTO musicians_genres(musician_id  ,genre_id)
	VALUES
	(3, 2),
	(4, 2),
	(9, 2),
	(10, 2),
	(12, 2);
--Electric
INSERT INTO musicians_genres(musician_id  ,genre_id)
	VALUES
	(4, 6),
	(8, 6);
