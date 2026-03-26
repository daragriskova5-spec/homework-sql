-- Задание 1

INSERT INTO list_performers
VALUES(1,  'Бюро'), 
(2, 'Скриптонит'), 
(3, 'Эндшпиль'), 
(4, 'Armich'), 
(5, 'Miyagi');

INSERT INTO list_genres
VALUES(1, 'Инди-поп'), 
(2, 'Местное инди'), 
(3, 'Поп'), 
(4, 'Рэп');

INSERT INTO genres_performers
VALUES(1, 1), (1, 2), (2, 3), (3, 3), (3, 4), (4, 3), (5, 4);

INSERT INTO album_list
VALUES(1, 'На соседних полках', '2024-05-31'), 
(2, 'Romantic Collection', '2023-12-29'), 
(3, 'Old Days', '2023-08-25'), 
(4, 'Смесь', '2023-04-14'), 
(5, 'Buster Keaton', '2019-06-21');

INSERT INTO albums_performers
VALUES(1, 1), (2, 2), (3, 3), (4, 4), (5, 5);

INSERT INTO track
VALUES(1, 'Будильник', '00:02:17', 1), 
(2, 'На соседних полках', '00:02:23', 1), 
(3, 'Разбалованная', '00:02:47', 2), 
(4, 'Slow Mo', '00:03:15', 4), 
(5, 'Малиновый рассвет', '00:03:54', 3), 
(6, 'Angel', '00:03:35', 5), 
(7, 'Ночи в одного', '00:02:07', 5),
(8, 'On my mind', '00:03:29', 4);

INSERT INTO list_collection
VALUES(1, 'ANABIOS', '2026-03-06'), 
(2, 'Romantic Collection', '2023-12-29'), 
(3, 'King Kong', '2019-11-14'), 
(4, 'Смесь', '2023-04-14');

INSERT INTO collections_tracks
VALUES(1, 3), (1, 4), (2, 5), (2, 4), (3, 6), (3, 7), (4, 3), (4, 4);
