USE kinopoisk;

-- ----------------JOINS and SELECTS--------------------

SELECT g.genre, m.name
FROM genres g
         LEFT JOIN movies m ON g.id = m.genre_id;

SELECT movies.name 'Название', g.genre 'Жанр'
FROM movies
         JOIN genres g ON movies.genre_id = g.id
ORDER BY g.genre;

SELECT m.name 'Название', m.country, m.year, g.genre, r.body
FROM movies m
         JOIN reviews r ON m.id = r.movie_id
         JOIN genres g ON g.id = m.genre_id
ORDER BY m.name;

SELECT p.user_id, CONCAT(p.first_name, ' ', p.last_name)                                              AS name,
       (SELECT COUNT(*) FROM reviews WHERE p.user_id = reviews.user_id GROUP BY p.user_id) AS count_of_post
FROM profiles p ORDER BY p.user_id DESC ;

SELECT COUNT(*)
FROM reviews
GROUP BY user_id;