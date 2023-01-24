INSERT INTO Genres(name) values
('Thrash Metal'),
('Death Metal'),
('Black Metal'),
('Metalcore'),
('Heavy Metal');

INSERT INTO Musicians(name) values
('Trivium'),
('As I Lay Dying'),
('Behemoth'),
('Judas Priest'),
('Sepultura'),
('At the Gates'),
('Dark Tranquillity'),
('Dimmu Borgir');

INSERT INTO Genres-Musicians values
(1, 1),
(4, 1),
(4, 2),
(2, 3),
(3, 3),
(5, 4),
(1, 5),
(2, 5),
(2, 6),
(4, 6),
(2, 7),
(3, 8);

INSERT INTO Albums(name, year_of) values
('The Nightmare of Being', 2021),
('The Sin and the Sentence', 2017),
('Shaped By Fire', 2019),
('I Loved You at Your Darkest', 2018),
('Firepower', 2018),
('Roots', 1996),
('Moment', 2020),
('Death Cult Armageddon', 2003);

INSERT INTO Musicians-Albums values
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 1),
(7, 7),
(8, 8);

INSERT INTO Tracks(name, album_id, duration) values
("The Fall Into Time", 1, 405),
("Cult Of Salvation", 1, 264),
("Sever The Hand", 2, 326),
("Betrayer", 2, 327),
("Shaped By Fire", 3, 218),
("My Own Grave", 3, 253),
("Bartzabel", 4, 301),
("Wolves OF Siberia", 4, 174),
("Firepower", 5, 207),
("Guardians", 5, 264),
("Roots Bloody Roots", 6, 212),
("Ratamahatta", 6, 271),
("Ego Deception", 7, 201),
("Failstate", 7, 200),
("Vredesbyrd", 8, 284),
("Progenies Of The Great Apocalypse", 8, 318);

INSERT INTO Compilations(name, year_of) values
('Kerrang', 2019),
('Billboard', 2020),
('MetalHammer', 2018),
('Darkside', 2005),
('HeadBanger', 1999),
('HardLife', 2007),
('BoB', 2012),
('GH', 2021);

INSERT INTO Tracks-Compilations values
(3, 1),
(5, 1),
(8, 1),
(1, 2),
(9, 2),
(4, 3),
(7, 3),
(16, 4),
(11, 5),
(12, 5),
(11, 6),
(15, 6),
(15, 7),
(14, 8)
(2, 8);