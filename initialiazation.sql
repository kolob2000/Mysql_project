-- наполняем таблицы --
-- --------------------------------
USE kinopoisk;
-- наполним жанры из файла
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\genres.txt' INTO TABLE genres (genre);
-- --------------------------------



SELECT *
FROM genres;


SELECT genre FROM genres ORDER BY rand() LIMIT 1;



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