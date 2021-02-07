CREATE TABLE snippets(
id serial PRIMARY KEY,
title varchar(100) NOT NULL,
content text NOT NULL,
created date NOT NULL,
expires date NOT NULL
);

INSERT INTO snippets (title, content, created, expires) VALUES (
'An old silent pond',
'An old silent pond...\nA frog jumps into the pond,\nsplash! Silence again.',
current_date,
current_date + INTERVAL '365 day'
);

INSERT INTO snippets (title, content, created, expires) VALUES (
'Over the wintry forest',
'Over the wintry\nforest, winds howl in rage\nwith no leaves to blow.',
current_date,
current_date + INTERVAL '365 day'
);
INSERT INTO snippets (title, content, created, expires) VALUES (
'First autumn morning',
'First autumn morning\nthe mirror I stare into\nshows my father''s face.',
current_date,
current_date + INTERVAL '7 day'
);


CREATE USER web;
GRANT SELECT, INSERT ON snippets TO web;
ALTER USER web WITH PASSWORD 'qwerty';