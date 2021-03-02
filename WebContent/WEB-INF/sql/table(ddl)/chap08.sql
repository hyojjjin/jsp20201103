--chap08 혼자해보기
--#1
DESC dept;

DROP TABLE dept;
CREATE TABLE dept( 
dno number(2), dname varchar2(14), loc varchar2(13)
);

DESC dept;


--#2
DESC emp;

CREATE TABLE emp (
    eno number(4), ename varchar2(10), dno number(2)
    );
    
DESC emp;


--#3
ALTER TABLE emp
MODIFY ename varchar2(25);

DESC emp;


--#4
/*
EMPLOYEE 테이블을 복사
EMPloyee2란 이름으로 생성
사원번호, 이름, 급여, 부서번호 만 복사
새로 생성된 테이블의 칼럼명은 각각
EMP_ID, NAME, SAL, DEPT_ID
*/

DROP TABLE employee2;
CREATE TABLE EMPLOYEE2
as
SELECT eno EMP_ID, ename NAME, salary SAL, dno DEPT_ID FROM EMPLOYEE;

DESC employee2;

CREATE table employee2(emp_id, name, sal, dept_id)
as
SELECT eno, ename, salary, dno FROM employee;


--#5
DROP TABLE emp;


--#6
RENAME employee2 to emp;


--#7
DESC dept;
ALTER TABLE dept
DROP COLUMN dname;

DESC dept;


