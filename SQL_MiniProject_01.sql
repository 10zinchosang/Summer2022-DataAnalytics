-- CREATE TABLE videos(
-- video_id integer PRIMARY KEY,
-- title varchar(50) NOT NULL,
-- length real NOT NULL,
-- url varchar(100) UNIQUE NOT NULL
-- );

-- INSERT INTO videos
-- VALUES (1,'Nice Guys',2.49,'https://www.youtube.com/watch?v=xfeys7Jfnx8'),
-- (2,'PickUp Artists Needs To Be STOPPED',18.58,'https://www.youtube.com/watch?v=BtLOs67vkRI'),
-- (3,'How to PICK UP Girls Like a Pro (5 Easy "HACKS")',10.46,'https://www.youtube.com/watch?v=nhP1ydLnk6M');

-- CREATE TABLE reviewers(
-- review_id integer PRIMARY KEY,
-- username varchar(50) NOT NULL,
-- rating integer,
-- review varchar(100) NOT NULL
-- video_id integer NOT NULL
-- );

-- INSERT INTO reviewers
-- VALUES (1,'genghislopez',0,'These tips suck',3),
-- (2,'tenzinchosang',0,'Instructions unclear, court trial soon',3),
-- (3,'ryanhigafan',5,'Love Ryan Higa',1),
-- (4,'donaldtrump',4,'Not bad',1),
-- (5,'MikeOxBig',5,'We must stop them!',2);

SELECT * FROM videos v JOIN reviewers r ON v.video_id=r.video_id;
