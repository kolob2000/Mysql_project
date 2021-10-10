DROP DATABASE IF EXISTS kinopoisk;
CREATE DATABASE kinopoisk;
USE kinopoisk;


DROP TABLE IF EXISTS genres;
CREATE TABLE genres
(
    id    TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    genre VARCHAR(50)
);

DROP TABLE IF EXISTS movie_types;
CREATE TABLE movie_types
(
    id   SERIAL,
    name VARCHAR(255)
);

DROP TABLE IF EXISTS movies;
CREATE TABLE movies
(
    id            SERIAL,
    name          VARCHAR(50) COMMENT 'Название фильма',
    genre_id      TINYINT UNSIGNED NOT NULL,
    year          YEAR,
    country       VARCHAR(255),
    movie_type_id BIGINT UNSIGNED  NOT NULL,
    description   TEXT,
    count_likes BIGINT COMMENT 'Количество лайков (триггер)',
    PRIMARY KEY (id),
    FOREIGN KEY (movie_type_id) REFERENCES movie_types (id),
    FOREIGN KEY (genre_id) REFERENCES genres (id)
);

DROP TABLE IF EXISTS actors;
CREATE TABLE actors
(
    id          SERIAL AUTO_INCREMENT PRIMARY KEY,
    first_name  VARCHAR(255),
    last_name   VARCHAR(255),
    birthday_at DATE,
    country     VARCHAR(255),
    biography   TEXT
);
DROP TABLE IF EXISTS movies_actors;
CREATE TABLE movies_actors
(
    movies_id BIGINT UNSIGNED NOT NULL,
    actor_id  BIGINT UNSIGNED NOT NULL,

    PRIMARY KEY (movies_id, actor_id),
    FOREIGN KEY (movies_id) REFERENCES movies (id),
    FOREIGN KEY (actor_id) REFERENCES actors (id)
);

DROP TABLE IF EXISTS creator_type;
CREATE TABLE creator_type
(
    id    SERIAL,
    title VARCHAR(255)
);

DROP TABLE IF EXISTS creators;
CREATE TABLE creators
(
    id              SERIAL AUTO_INCREMENT PRIMARY KEY,
    first_name      VARCHAR(255),
    last_name       VARCHAR(255),
    birthday_at     DATE,
    country         VARCHAR(255),
    biography       TEXT,
    creator_type_id BIGINT UNSIGNED NOT NULL,
    FOREIGN KEY (creator_type_id) REFERENCES creator_type (id)
);

DROP TABLE IF EXISTS movies_creator;
CREATE TABLE movies_creator
(
    movies_id  BIGINT UNSIGNED NOT NULL,
    creator_id BIGINT UNSIGNED NOT NULL,

    PRIMARY KEY (movies_id, creator_id),
    FOREIGN KEY (movies_id) REFERENCES movies (id),
    FOREIGN KEY (creator_id) REFERENCES creators (id)
);

--  ------------------------------------------------------------------------------

DROP TABLE IF EXISTS users;
CREATE TABLE users
(
    id          SERIAL AUTO_INCREMENT PRIMARY KEY,
    login       VARCHAR(255) UNIQUE    NOT NULL,
    email       VARCHAR(255) UNIQUE    NOT NULL,
    phone       BIGINT UNSIGNED UNIQUE NOT NULL,
    passwd_hash VARCHAR(255)
);


DROP TABLE IF EXISTS media_type;
CREATE TABLE media_type
(
    id   SERIAL,
    name VARCHAR(255) UNIQUE
);

DROP TABLE IF EXISTS media;
CREATE TABLE media
(
    id            SERIAL,
    user_id       BIGINT UNSIGNED NOT NULL,
    media_type_id BIGINT UNSIGNED NOT NULL,
    filename      VARCHAR(50),
    `size`        INT,
    created_at    DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at    DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY (media_type_id) REFERENCES media_type (id),
    FOREIGN KEY (user_id) REFERENCES users (id)
);

DROP TABLE IF EXISTS profiles;
CREATE TABLE profiles
(
    user_id     BIGINT UNSIGNED NOT NULL UNIQUE,
    gender      ENUM ('f','m'),
    first_name  VARCHAR(255),
    last_name   VARCHAR(255),
    birthday_at DATE,
    hometown    VARCHAR(255),
    photo_id    BIGINT UNSIGNED DEFAULT NULL,
    created_at  DATETIME        DEFAULT NOW(),

    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (photo_id) REFERENCES media (id)
);

DROP TABLE IF EXISTS likes;
CREATE TABLE likes
(
    user_id  BIGINT UNSIGNED NOT NULL,
    movie_id BIGINT UNSIGNED NOT NULL,

    PRIMARY KEY (user_id, movie_id),
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (movie_id) REFERENCES movies (id)
);

DROP TABLE IF EXISTS reviews;
CREATE TABLE reviews
(
    user_id  BIGINT UNSIGNED NOT NULL,
    movie_id BIGINT UNSIGNED NOT NULL,
    body     TEXT,

    PRIMARY KEY (user_id, movie_id),
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (movie_id) REFERENCES movies (id)
);