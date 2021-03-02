--데이터(record, row) 추가
--INSERT INTO tname(coll, col2) VALUES(val1, val2);
--책(227쪽)

CREATE TABLE dept_copy
AS
SELECT * FROM department WHERE 0=1;

DESC dept_copy;
INSERT INTO dept_copy --(dno, dname, loc) 순서가 같으면 생략 가능
VALUES (10, 'ACCOUNTING', 'NEW YORK');

DESC dept_copy;

INSERT INTO dept_copy (dno, dname, loc)
VALUES (20, 'DALLAS', 'RESEARCH');
SELECT * FROM dept_copy;

COMMIT;

--NULL
/*
##null로 인식되는 경우들!
1. 데이터 값을 안 넣는 경우
2. null을 삽입했을 경우
3. "" 공백 문자를 넣었을 경우
*/

--값을 안넣는 경우
DESC dept_copy;
INSERT INTO dept_copy (dno, dname)
VALUES (30, 'SALAES');
SELECT * FROM dept_copy;
--묵시적으로 데이터를 삽입 안했을 경우 null로 표기

INSERT INTO dept_copy (dno, dname, loc) --얘네 생략 가능
VALUES(40, 'OPERATIONS', null);
--null을 표시해줌.
SELECT * FROM dept_copy;

COMMIT;
INSERT INTO dept_copy 
VALUES (30, 'COMPUTING', '');
SELECT * FROM dept_copy;
--공백문자도 null로 인식


