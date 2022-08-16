-- CREATE TABLE users(
-- user_id integer PRIMARY KEY,
-- full_name varchar(50) NOT NULL,
-- created_at date NOT NULL
-- );

-- INSERT INTO users
-- VALUES (1,'Tenzin Chosang','2020-01-10'),
-- (2,'Genghis Lopez','2021-02-20'),
-- (3,'Donald Trump','2022-03-30'),
-- (4,'Ryan Higa','2022-04-04');

-- CREATE TABLE purchases(
-- purchase_id integer PRIMARY KEY,
-- type varchar(50) NOT NULL,
-- user_id integer NOT NULL
-- );

-- INSERT INTO purchases
-- VALUES (1,'life',1),
-- (2,'car',2),
-- (3,'life',3),
-- (4,'home',3),
-- (5,'car',3),
-- (6,'home',4),
-- (7,'car',4);

SELECT * FROM users u JOIN purchases p ON u.user_id=p.user_id;

SELECT * FROM users WHERE created_at > '2022-01-01';

SELECT * FROM purchases WHERE type = 'car' LIMIT 1;

SELECT u.full_name, COUNT(type) FROM users u JOIN purchases p ON u.user_id=p.user_id GROUP BY u.full_name ORDER BY 2 ASC;

SELECT * FROM users u JOIN purchases p ON u.user_id=p.user_id WHERE type = 'life' OR full_name LIKE '% Lopez';