-- наполняем таблицы --
-- --------------------------------
USE kinopoisk;
-- 1. наполним жанры из файла

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\genres.txt' INTO TABLE genres (genre);

-- --------------------------------

-- 2. Наполним создателей

INSERT INTO creator_type (id, title)
VALUES (DEFAULT, 'режиссер'),
       (DEFAULT, 'сценарист'),
       (DEFAULT, 'оператор'),
       (DEFAULT, 'звукорежиссер'),
       (DEFAULT, 'композитор'),
       (DEFAULT, 'костюмер'),
       (DEFAULT, 'гриммер'),
       (DEFAULT, 'декоратор'),
       (DEFAULT, 'стилист'),
       (DEFAULT, 'свет'),
       (DEFAULT, 'коммерчиский директор');

-- 3. Наполним виды кино

INSERT INTO movie_types
VALUES (DEFAULT, 'Художественное кино'),
       (DEFAULT, 'Документальное кино'),
       (DEFAULT, 'Мультфильм'),
       (DEFAULT, 'Фильм-спектакль'),
       (DEFAULT, 'Мьюзикл'),
       (DEFAULT, 'Научно-популярное кино'),
       (DEFAULT, 'Образовательный фильм');

-- 4. Наполним типы медиафайлов

INSERT INTO media_type
VALUES (DEFAULT, 'Видео'),
       (DEFAULT, 'Документ'),
       (DEFAULT, 'Аудио'),
       (DEFAULT, 'Изображение'),
       (DEFAULT, 'Таблица'),
       (DEFAULT, 'Архив');

-- 5.

INSERT INTO users
VALUES (DEFAULT, 'log1', 'mail@mail.ru', 74997875696, '8743b52063cd84097a6fhf33f5c74f5'),
       (DEFAULT, 'denim', 'denim@mail.ru', 74995105696, '8743b52063cd84097a6td1633f5c74f5'),
       (DEFAULT, 'sunrise', 'sunrise@mail.ru', 74497105696, '8743b52063cd8fff7a65d1633f5c74f5'),
       (DEFAULT, 'superman', 'superman@mail.ru', 74997105696, '8743b52063cdhj097a65d1633f5c74f5'),
       (DEFAULT, 'tiesto', 'tiesto@mail.ru', 74911105696, '8743b52063cd84097y65d1633f5c74f5'),
       (DEFAULT, 'jordan', 'jordan@mail.ru', 74922105696, '8743b52063cd8409ll65d1633f5c74f5'),
       (DEFAULT, 'noname', 'noname@mail.ru', 74933105696, '8743b52063cd840dcv65d1633f5c74f5'),
       (DEFAULT, 'clipper', 'clipper@mail.ru', 75545105696, '8743b52063cd84ew7a65d1633f5c74f5'),
       (DEFAULT, 'robot_vector', 'robot_vector@mail.ru', 74997665696, '8743dfg2063cd84097a65d1633f5c74f5'),
       (DEFAULT, 'transformer', 'transformer@mail.ru', 74997107796, '8743b525r3cd84097a65d1633f5c74f5'),
       (DEFAULT, 'tiguan', 'tiguan@mail.ru', 74977735696, '8743b52063cd8409567u5d1633f5c74f5');

-- 6. заполним media

INSERT INTO media(id, user_id, media_type_id, filename, size, created_at, updated_at)
VALUES (DEFAULT, 1, 4, 'photo.jpg', 222222, DEFAULT, DEFAULT),
       (DEFAULT, 2, 4, 'photo.jpg', 222222, DEFAULT, DEFAULT),
       (DEFAULT, 3, 4, 'photo.jpg', 222222, DEFAULT, DEFAULT),
       (DEFAULT, 4, 4, 'photo.jpg', 222222, DEFAULT, DEFAULT),
       (DEFAULT, 5, 4, 'photo.jpg', 222222, DEFAULT, DEFAULT),
       (DEFAULT, 6, 4, 'photo.jpg', 222222, DEFAULT, DEFAULT),
       (DEFAULT, 7, 4, 'photo.jpg', 222222, DEFAULT, DEFAULT),
       (DEFAULT, 8, 4, 'photo.jpg', 222222, DEFAULT, DEFAULT),
       (DEFAULT, 9, 4, 'photo.jpg', 222222, DEFAULT, DEFAULT),
       (DEFAULT, 10, 4, 'photo.jpg', 222222, DEFAULT, DEFAULT),
       (DEFAULT, 11, 4, 'photo.jpg', 222222, DEFAULT, DEFAULT);

INSERT INTO media(id, user_id, media_type_id, filename, size, created_at, updated_at)
VALUES (DEFAULT, 1, 1, 'trailer.jpg', 222222, DEFAULT, DEFAULT),
       (DEFAULT, 2, 1, 'trailer.jpg', 222222, DEFAULT, DEFAULT),
       (DEFAULT, 3, 1, 'trailer.jpg', 222222, DEFAULT, DEFAULT),
       (DEFAULT, 4, 1, 'trailer.jpg', 222222, DEFAULT, DEFAULT),
       (DEFAULT, 5, 1, 'trailer.jpg', 222222, DEFAULT, DEFAULT),
       (DEFAULT, 6, 1, 'trailer.jpg', 222222, DEFAULT, DEFAULT),
       (DEFAULT, 7, 1, 'trailer.jpg', 222222, DEFAULT, DEFAULT),
       (DEFAULT, 8, 1, 'trailer.jpg', 222222, DEFAULT, DEFAULT),
       (DEFAULT, 9, 1, 'trailer.jpg', 222222, DEFAULT, DEFAULT),
       (DEFAULT, 10, 1, 'trailer.jpg', 222222, DEFAULT, DEFAULT);


-- 7. заполняем profiles
INSERT IGNORE
INTO profiles
VALUES (1, 'm', 'Andrey', 'Petrov', '22-12-1982', 'Sverdlovsk', 1, DEFAULT),
       (2, 'm', 'Sergey', 'Sidorov', '22-12-1982', 'Moscow', 2, DEFAULT),
       (3, 'm', 'Valery', 'Epifanv', '22-12-1982', 'Kaluga', 3, DEFAULT),
       (4, 'm', 'Nickolay', 'Romanov', '22-12-1982', 'Saint-Petersburg', 4, DEFAULT),
       (5, 'm', 'Ivan', 'Galcev', '22-12-1982', 'Murmansk', 5, DEFAULT),
       (6, 'f', 'Tatyana', 'Rumyanzeva', '22-12-1982', 'Vsevolojsk', 6, DEFAULT),
       (7, 'm', 'Zahar', 'Lipkin', '22-12-1982', 'Kirshi', 7, DEFAULT),
       (8, 'f', 'Ludmila', 'Trubnikov', '22-12-1982', 'Tomsk', 8, DEFAULT),
       (9, 'm', 'Evgenia', 'Zaharova', '22-12-1982', 'Omsk', 9, DEFAULT),
       (10, 'm', 'Marat', 'Tulkin', '22-12-1982', 'Habarovsk', 10, DEFAULT),
       (11, 'm', 'Timofey', 'Pukalo', '22-12-1982', 'Novosibisk', 11, DEFAULT);


-- 8. заполним movies

INSERT INTO movies(id, name, genre_id, year, country, movie_type_id, description, avg_rating)
VALUES (DEFAULT, 'В бой идут одни старики', FLOOR(1 + (RAND() * 32)), FLOOR(1895 + (RAND() * 126)), 'СССР',
        FLOOR(1 + (RAND() * 7)), 'description', DEFAULT),
       (DEFAULT, 'Пятница', FLOOR(1 + (RAND() * 32)), FLOOR(1895 + (RAND() * 126)), 'USA',
        FLOOR(1 + (RAND() * 7)), 'description', DEFAULT),
       (DEFAULT, 'После дождечка в четверг', FLOOR(1 + (RAND() * 32)), FLOOR(1895 + (RAND() * 126)), 'Great Britain',
        FLOOR(1 + (RAND() * 7)), 'description', DEFAULT),
       (DEFAULT, 'Большая туса', FLOOR(1 + (RAND() * 32)), FLOOR(1895 + (RAND() * 126)), 'Russia',
        FLOOR(1 + (RAND() * 7)), 'description', DEFAULT),
       (DEFAULT, 'Корупционер', FLOOR(1 + (RAND() * 32)), FLOOR(1895 + (RAND() * 126)), 'Australia',
        FLOOR(1 + (RAND() * 7)), 'description', DEFAULT),
       (DEFAULT, 'Мажор', FLOOR(1 + (RAND() * 32)), FLOOR(1895 + (RAND() * 126)), 'Ukraine',
        FLOOR(1 + (RAND() * 7)), 'description', DEFAULT),
       (DEFAULT, 'Жили-были', FLOOR(1 + (RAND() * 32)), FLOOR(1895 + (RAND() * 126)), 'Ussr',
        FLOOR(1 + (RAND() * 7)), 'description', DEFAULT),
       (DEFAULT, 'Параход', FLOOR(1 + (RAND() * 32)), FLOOR(1895 + (RAND() * 126)), 'Russia',
        FLOOR(1 + (RAND() * 7)), 'description', DEFAULT),
       (DEFAULT, 'Любовь и голуби', FLOOR(1 + (RAND() * 32)), FLOOR(1895 + (RAND() * 126)), 'СССР',
        FLOOR(1 + (RAND() * 7)), 'description', DEFAULT),
       (DEFAULT, 'Темнота', FLOOR(1 + (RAND() * 32)), FLOOR(1895 + (RAND() * 126)), 'Russia',
        FLOOR(1 + (RAND() * 7)), 'description', DEFAULT);

-- 9. Заполним трэйлеры

INSERT INTO trailers(id, title, media_id)
VALUES (DEFAULT, 'Трейлер к фильму', 12),
       (DEFAULT, 'Трейлер к фильму', 13),
       (DEFAULT, 'Трейлер к фильму', 14),
       (DEFAULT, 'Трейлер к фильму', 15),
       (DEFAULT, 'Трейлер к фильму', 16),
       (DEFAULT, 'Трейлер к фильму', 17),
       (DEFAULT, 'Трейлер к фильму', 18),
       (DEFAULT, 'Трейлер к фильму', 19),
       (DEFAULT, 'Трейлер к фильму', 20),
       (DEFAULT, 'Трейлер к фильму', 21);

-- 10. Заполним связь trailers_movies
INSERT INTO trailers_movies
VALUES (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 5),
       (6, 6),
       (7, 7),
       (8, 8),
       (9, 9),
       (10, 10);
-- 11. Наполним актеров

INSERT INTO actors(id, first_name, last_name, birthday_at, country, biography)
VALUES (DEFAULT, 'Djon', 'Travolta', STR_TO_DATE('11-03-1975', '%d-%m-%Y'), 'Usa', 'biography'),
       (DEFAULT, 'Alexandr', 'Bezrukov', STR_TO_DATE('20-06-1979', '%d-%m-%Y'), 'Russia', 'biography'),
       (DEFAULT, 'Semen', 'Svetlakov', STR_TO_DATE('3-05-1985', '%d-%m-%Y'), 'Russia', 'biography'),
       (DEFAULT, 'Evgeniy', 'Pchelkin', STR_TO_DATE('31-05-1995', '%d-%m-%Y'), 'Russia', 'biography'),
       (DEFAULT, 'Roman', 'Naumov', STR_TO_DATE('13-05-1965', '%d-%m-%Y'), 'Russia', 'biography'),
       (DEFAULT, 'Oleg', 'Tabakov', STR_TO_DATE('25-05-1972', '%d-%m-%Y'), 'Russia', 'biography'),
       (DEFAULT, 'Evgeniy', 'Smaktunovsky', STR_TO_DATE('2-09-1988', '%d-%m-%Y'), 'Russia', 'biography'),
       (DEFAULT, 'Tatyana', 'Fedorova', STR_TO_DATE('16-08-1966', '%d-%m-%Y'), 'Russia', 'biography'),
       (DEFAULT, 'Nikita', 'Michalkov', STR_TO_DATE('22-06-1954', '%d-%m-%Y'), 'Russia', 'biography'),
       (DEFAULT, 'Semen', 'Habibulin', STR_TO_DATE('5-05-1983', '%d-%m-%Y'), 'Russia', 'biography');

SELECT *
FROM movies;
SELECT *
FROM actors;


SELECT *
FROM movie_types;

SHOW TABLE STATUS;


SELECT FLOOR(1895 + (RAND() * 126));

SELECT movies.name 'Название', g.genre 'Жанр'
FROM movies
         JOIN genres g ON movies.genre_id = g.id;

SELECT *
FROM media;

# SELECT *
# FROM genres;
#
#
# SELECT genre FROM genres ORDER BY rand() LIMIT 1;


# USE kinopoisk;
#
# INSERT INTO years (year)
# VALUES (2019),
#        (2020),
#        (2021);
#
# INSERT INTO genres(genre)
# VALUES ('Комедия'),
#        ('Боевик'),
#        ('Мелодрама');
#
# INSERT INTO movies(name, genre_id, year_id)
# VALUES ('Один дома',
#         (SELECT id FROM genres WHERE genre = 'Комедия'),
#         (SELECT id FROM years WHERE year = 2019));
# TRUNCATE movies;
# TRUNCATE years;
# DELIMITER //
# CREATE PROCEDURE year_filler()
#
# BEGIN
#     DECLARE year INT DEFAULT 1901;
#     WHILE year < 2099
#         DO
#             INSERT INTO years(year) VALUES (year);
#             SET year = year + 1;
#         END WHILE;
#
# END;
# //
# DELIMITER ;
#
# DROP PROCEDURE year_filler;
#
# CALL year_filler();
#
# LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\genres.txt' INTO TABLE genres (genre);
#
# SHOW VARIABLES LIKE 'secure_file_priv';
#
# USE another_vk;
# SELECT *
# FROM users
# ORDER BY RAND()
# LIMIT 1;
#
# USE shop;
# # SHOW TABLES;
#
# DROP PROCEDURE proizved;
# CREATE PROCEDURE proizved()
# BEGIN
#     DECLARE done INT DEFAULT FALSE;
#     DECLARE proiz BIGINT DEFAULT 1;
#     DECLARE b INT;
#     DECLARE cur_for_proiz CURSOR FOR SELECT value FROM shop.storehouses_products WHERE value IS NOT NULL AND value != 0;
#     DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
#     OPEN cur_for_proiz;
#
#     proizved_loop:
#     LOOP
#         FETCH cur_for_proiz INTO b;
#         IF done THEN
#             LEAVE proizved_loop;
#         END IF;
#         SET proiz := b * proiz;
#     END LOOP;
#     CLOSE cur_for_proiz;
#     SELECT proiz as proi;
#
# END;
#
# CALL proizved();