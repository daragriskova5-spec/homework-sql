CREATE TABLE IF NOT EXISTS list_performers (
    performers_id SERIAL PRIMARY KEY,
    name_performers VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS list_genres (
    genres_id SERIAL PRIMARY KEY,
    genre_name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS album_list (
    album_id SERIAL PRIMARY KEY,
    album_name VARCHAR(40) NOT NULL,
    year_release DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS track (
    track_id SERIAL PRIMARY KEY,
    track_name VARCHAR(40) NOT NULL,
    duration TIME NOT NULL,
    album_id INTEGER REFERENCES album_list(album_id)
);

CREATE TABLE IF NOT EXISTS list_collection (
    collection_id SERIAL PRIMARY KEY,
    collection_name VARCHAR(40) NOT NULL,
    release_year DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS genres_performers (
    performers_id INTEGER REFERENCES list_performers(performers_id),
    genres_id INTEGER REFERENCES list_genres(genres_id),
    CONSTRAINT pk PRIMARY KEY (performers_id, genres_id)
);

CREATE TABLE IF NOT EXISTS albums_performers (
    album_id INTEGER REFERENCES album_list(album_id),
    performers_id INTEGER REFERENCES list_performers(performers_id),
    CONSTRAINT pk2 PRIMARY KEY (album_id, performers_id)
);

CREATE TABLE IF NOT EXISTS collections_tracks (
    collection_id INTEGER REFERENCES list_collection(collection_id),
    track_id INTEGER REFERENCES track(track_id),
    CONSTRAINT pk3 PRIMARY KEY (collection_id, track_id)
);
