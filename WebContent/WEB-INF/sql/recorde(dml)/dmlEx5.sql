--DML (Data Manipulation Language)
--INSERT, UPDATEm DELETE

CREATE TABLE bank
(
name VARCHAR2(255),
money NUMBER
);

INSERT INTO bank VALUES ('ironman', 500);
INSERT INTO bank VALUES ('captain', 700);

COMMIT;

SELECT * FROM bank;

--catain -> iroman 200원 이체
UPDATE bank
SET money = 500
WHERE name='captain';

UPDATE bank
SET money = 700
WHERE name='iroman';


ROLLBACK;

SELECT * FROM bank;