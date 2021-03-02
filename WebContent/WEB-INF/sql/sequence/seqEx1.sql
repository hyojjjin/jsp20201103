CREATE TABLE post
(
title VARCHAR2(255),
body VARCHAR2(255)
);
INSERT INTO post (title, body)
VALUES ('abc', 'def');
INSERT INTO post (title, body)
VALUES ('abc', 'def');
SELECT * FROM post;
DELETE post WHERE title='abc';

ALTER TABLE post
ADD id NUMBER PRIMARY KEY;

SELECT * FROM post;

INSERT INTO post (id, title, body)
VALUES (1, 'abc', 'def');
INSERT INTO post (id, title, body)
VALUES (2, 'abc', 'def');

DELETE post WHERE id=1;

-- 
SELECT max(id) FROM post; -- 내가

SELECT max(id) FROM post; -- 다른 


INSERT INTO post (id, title, body)
VALUES (3, 'abc', 'def');



COMMIT;


-- SEQUENCE
CREATE SEQUENCE my_seq; -- 1부터 1씩 증가

DELETE post;
COMMIT;

INSERT INTO post (id, title, body)
VALUES (my_seq.nextval , 'abc', 'def');

INSERT INTO post (id, title, body)
VALUES (my_seq.nextval , 'abc', 'def');

SELECT * FROM post;








