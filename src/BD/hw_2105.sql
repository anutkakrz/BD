
--Создать таблицы реакций и комментариев (на видео)

CREATE TABLE video_reactions (
		id int primary key auto_increment,
        created_at timestamp,
         video_id int ,
	   	author_id int,
         value int
);

CREATE TABLE video_comments  (
		id int primary key auto_increment,
        created_at timestamp,
         video_id int ,
	   	author_id int,
        content varchar(500)
);

--Добавить несколько записей в каждую таблицу выше

INSERT INTO video_reactions (created_at, video_id, author_id, value)
VALUES
	(current_timestamp(), 1, 2, 5),
	(current_timestamp(), 1, 3, 7),
    (current_timestamp(), 3, 1, 8),
    (current_timestamp(), 2, 4, 6),
    (current_timestamp(), 4, 2, 10),
    (current_timestamp(), 2, 1, 9),
    (current_timestamp(), 3, 3, 8)

INSERT INTO video_comments (created_at, video_id, author_id, content)
VALUES
    	(current_timestamp(), 2, 2, "super!"),
    	(current_timestamp(), 3, 1, ")))))"),
        (current_timestamp(), 4, 1, "davay eshe!"),
        (current_timestamp(), 4, 2, "interesno"),
        (current_timestamp(), 1, 2, "gut"),
        (current_timestamp(), 2, 1, "+++++"),
        (current_timestamp(), 3, 2, "shon!")
