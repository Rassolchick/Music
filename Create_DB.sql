CREATE TABLE IF NOT EXISTS Genres (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Musicians (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Genres-Musicains (
	Genre_ID INTEGER REFERENCES Genre(ID),
	Musician_ID INTEGER REFERENCES Musicians(ID),
	CONSTRAINT pk_Genre-Musician PRIMARY KEY (Genre_ID, Musiacian_ID)
);


CREATE TABLE IF NOT EXISTS Albums (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) unique NOT NULL,
	Year_of INTEGER check(Year_of>1900)
);


CREATE TABLE IF NOT EXISTS Musicians-Albums (
	Album_ID INTEGER REFERENCES Albums(ID),
	Musician_ID INTEGER REFERENCES Musicains(ID),
	CONSTRAINT pk_Musician-Album PRIMARY KEY (Album_ID, Musician_ID)
);


CREATE TABLE IF NOT EXISTS Tracks (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	duration INTEGER,
	Album_ID INTEGER REFERENCES Album(ID)
);

CREATE TABLE IF NOT EXISTS Compilations (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) unique NOT NULL,
	Year_of INTEGER check(Year_of>1900),
);

CREATE TABLE IF NOT EXISTS Tracks-Compilations (
	Track_ID INTEGER REFERENCES Tracks(ID),
	Compilation_ID INTEGER REFERENCES Compilations(ID),
	CONSTRAINT pk_Track-Compilation PRIMARY KEY (Track_ID, Compilation_ID)
);