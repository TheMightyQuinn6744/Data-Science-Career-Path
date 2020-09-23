CREATE TABLE friends (
  id INTEGER,
  name TEXT,
  birthday DATE
);

INSERT INTO friends (id, name, birthday)
VALUES (1, 'Jane Doe', '1990-05-30');

INSERT INTO friends (id, name, birthday)
VALUES (2, 'Robin Rodney', '1988-10-01');

INSERT INTO friends (id, name, birthday)
VALUES (3, 'Zoe Sandifer', '2015-08-02');

UPDATE friends
SET name = "Jane Smith"
WHERE id = 1;

ALTER TABLE friends 
ADD COLUMN email TEXT;

UPDATE friends 
SET email = 'jane@codecademy.com'
WHERE id = 1;

UPDATE friends 
SET email = 'robin@codecademy.com'
WHERE id = 2;

UPDATE friends 
SET email = 'zoe@codecademy.com'
WHERE id = 3;

DELETE FROM friends 
WHERE id = 1;

SELECT * FROM friends;
