--
CREATE TABLE data_type_ex1

(
num1 NUMBER,
num2 NUMBER(2),
num3 NUMBER(3, 2)
);

INSERT INTO data_type_ex1(num1)
VALUES (0);
INSERT INTO data_type_ex1(num1)
VALUES (0.01);
INSERT INTO data_type_ex1(num1)
VALUES (9999999999);

INSERT INTO data_type_ex1(num2)
VALUES (0);
INSERT INTO data_type_ex1(num2)
VALUES (0.01); --소수점은 들어갈 수 없음
INSERT INTO data_type_ex1(num2)
VALUES (5.5); --반올림되어 6으로 들어감
INSERT INTO data_type_ex1(num2)
VALUES (99);
INSERT INTO data_type_ex1(num2)
VALUES (100);


INSERT INTO data_type_ex1(num3)
VALUES (0.01);
INSERT INTO data_type_ex1(num3)
VALUES (0.015); --반올림되어 나옴
INSERT INTO data_type_ex1(num3)
VALUES (9.015);
INSERT INTO data_type_ex1(num3)
VALUES (10.015); --전체 자리수를 넘김.
INSERT INTO data_type_ex1(num3)
VALUES (0);

SELECT * FROM data_type_ex1;


--문자열
CREATE TABLE data_type_ex2
(
char1 CHAR(3), 
vchar2 VARCHAR2(6)
);
--char, varchar2의 차이, 빈공간을 공백으로 채우냐, 안채우냐. char 채움 / varchar2 안채움.

INSERT INTO data_type_ex2
(char1) VALUES('');
INSERT INTO data_type_ex2
(char1) VALUES('a');
INSERT INTO data_type_ex2
(char1) VALUES('abc');
INSERT INTO data_type_ex2
(char1) VALUES('abcd'); --x 글자 3개만 가능.

INSERT INTO data_type_ex2
(vchar2) VALUES('abc');
INSERT INTO data_type_ex2
(vchar2) VALUES('abcdf');
INSERT INTO data_type_ex2
(vchar2) VALUES('abcdef');
INSERT INTO data_type_ex2
(vchar2) VALUES('abcdefg'); --x 글자 6개만 가능.

INSERT INTO data_type_ex2
(vchar2) VALUES ('효');

INSERT INTO data_type_ex2
(vchar2) VALUES ('효진');

INSERT INTO data_type_ex2
(vchar2) VALUES ('효진이');

SELECT * FROM data_type_ex2;


COMMIT;

--날짜
--DATE
CREATE TABLE data_type_ex3
(
date1 DATE
);
SELECT sysdate FROM dual;

INSERT INTO data_type_ex3
VALUES (sysdate);

SELECT * FROM data_type_ex3;

SELECT * FROM data_type_ex3;
INSERT INTO data_type_ex3
VALUES ('2020/12/02');

INSERT INTO data_type_ex3
VALUES (TO_DATE('2020-10-10','YYYY-MM-DD'));

INSERT INTO data_type_ex3
VALUES (TO_DATE('2020-09-09 17:33:22', 'YYYY-MM-DD HH24:MI:SS'));

SELECT * FROM data_type_ex3;


SELECT TO_CHAR(date1, 'YYYY-MM-DD HH24:MI:SS')
FROM data_type_ex3;

COMMIT;


--책(229쪽)
CREATE TABLE emp_copy
AS
SELECT eno, ename, job, hiredate, dno
FROM employee
WHERE 0=1;

INSERT INTO emp_copy
VALUES (7000, 'CANDY', 'MANAGER', '2012/05/01', 10);


INSERT INTO emp_copy
VALUES (7000, 'CANDY', 'MANAGER', TO_DATE('2012/05/01', 'YYYY/MM/DD'), 10); --다른 버전에서도 가능하려면 To_date 넣어주기

SELECT * FROM emp_copy;

--책 (230쪽)
INSERT INTO emp_copy
VALUES (7010, 'TOM', 'MANAGER',
TO_DATE('2012,05,01', 'YYYY,MM,DD'), 20);

SELECT * FROM emp_copy;

INSERT INTO emp_copy
VALUES (7020, 'JERRY', 'SALESMAN', SYSDATE, 30);

SELECT * FROM emp_copy;

--책 (231쪽)
DROP TABLE dept_copy;
CREATE TABLE dept_copy
AS
SELECT * FROM department WHERE 0=1;

INSERT INTO dept_copy
SELECT * FROM department;
