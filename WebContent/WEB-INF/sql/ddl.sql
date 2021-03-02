--table 만들기
--CREATE TABLE

CREATE TABLE table1 (
    col1 NUMBER(3, 1), --수 3의 길이고 소수밑 1
    col2 VARCHAR2(6), --가변길이 문자열 6bytes까지
    col3 CHAR(4), --고정길이 문자열 4bytes
    col4 DATE --날짜 시간
    );
    
    
SELECT * FROM table1;
DESC table1;
SELECT * FROM department;



--P17
--DATA TYPE
--수, 문자열, 날짜시간
--#수
--NUMBER
--NUMBER(값)
--    (ex) 값이 3미면, 1000이상  표시 못함.
--NUMBER(값1, 값2)
--     (ex) 값1은 총 길이, 값2는 소수점 밑의 길이
--          NUMBER(3, 2) : 10이상 표시 못함

--#문자열
--VARCHAR2(값) : 가변 길이
--값: byte수
--CHAR(값) : 고정 길이
--값: byte수

--#날짜시간
--date



--p207
CREATE table dept (
    dno number(2),
    dname varchar2(14),
    loc varchar2(13)
);


DESC dept;


--이미 있는 테이블 복사
-- 1. 같은 구조의 table
-- 2. 옛 table을 select -> 신 table insert

CREATE TABLE new_table
AS
SELECT * FROM old_table;

--책 예제 (207쪽~)
CREATE TABLE dept_second
as
SELECT * FROM department;

SELECT * FROM dept_second;

CREATE TABLE dept20
as
SELECT eno, ename, salary*12 annsal
FROM employee
WHERE dno=20;

SELECT * FROM dept20;
DESC dept20;

CREATE TABLE dept_third
AS
SELECT dno, dname
FROM department
WHERE 0=1;

SELECT * FROM department;
SELECT * FROM dept_third;
