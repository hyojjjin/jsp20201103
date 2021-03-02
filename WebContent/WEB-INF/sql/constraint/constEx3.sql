-- PRIMARY KEY
CREATE TABLE const09 (
    id NUMBER,
    name VARCHAR2(30),
    PRIMARY KEY (id)
    );
    
    INSERT INTO const09 (id, name)
    VALUES (null, 'a');
    INSERT INTO const09 (id, name)
    VALUES (1, 'a');
    
    INSERT INTO const09 (id, name)
    VALUES (1, 'b');
    
SELECT * FROM const09;

COMMIT;


--FOREIGN KEY
DROP TABLE cons10;
CREATE TABLE const10
(
name VARCHAR2(30),
dno NUMBER(2),
FOREIGN KEY (dno) REFERENCES const08_dep
);

INSERT INTO const10
VALUES('a', 10);
INSERT INTO const10
VALUES ('b', 50);
SELECT * FROM const10;

COMMIT;

--primary key, foreign key
CREATE TABLE const11
(
id NUMBER,
name VARCHAR2(30),
dno NUMBER(2),
PRIMARY KEY (id),
FOREIGN KEY (dno) REFERENCES const08_dep
);
    