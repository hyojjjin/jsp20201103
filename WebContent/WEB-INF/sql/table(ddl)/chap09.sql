--chap09 혼자해보기
--#1
/*
EMP 테이블 구조 복사
EMP_INSERT란 이름의
빈 테이블
*/
DROP TABLE EMP_INSERT;
CREATE TABLE EMP_INSERT
as
SELECT * FROM employee
WHERE 0=1;

--#2
/*
나를
EMP_INSERT 테이블에 추가
입사일 오늘로..
SYSDATE 이용
*/
SELECT * FROM EMP_INSERT;

INSERT INTO EMP_INSERT
VALUES (1, '나싫엉', 'kk', null, sysdate, 10000, 1000, 10);

SELECT * FROM EMP_INSERT;


--#3
/*
EMP_INSERT 테이블에 사람을 추가
입사일을 어제로
TO_DATE 함수 이용
*/
INSERT INTO EMP_INSERT
VALUES (2, '기믄지', 'kk', null, TO_DATE(sysdate-1, 'YY/MM/DD HH24:MI:SS'), 10000, 1000, 10);
SELECT * FROM EMP_INSERT;

DELETE EMP_INSERT
WHERE eno=2;


--#4
/*
employee 테이블 복사
EMP_COPY란 테이블 생성
*/
SELECT * FROM EMP_COPY;
DROP TABLE emp_copy;
CREATE TABLE EMP_COPY
AS
SELECT * FROM employee;

SELECT * FROM emp_copy;


--#5
/*
사원번호가 7788인 사원의
부서번호를 10으로 수정
*/
SELECT * FROM emp_copy WHERE eno=7788;
UPDATE emp_copy
SET dno = 10
WHERE eno=7788;

SELECT * FROM emp_copy WHERE eno=7788;


--#6
/*
사원번호 7788
담당업무 및 급여를
사원번호 7499와 일치하도록 수정
*/
SELECT * FROM emp_copy WHERE eno=7788; --ANALYST / 3000
SELECT * FROM emp_copy WHERE eno=7499; --SALARYMAN / 1600

UPDATE emp_copy
SET job = (SELECT job
           FROM emp_copy
           WHERE eno = 7499
            ),
    salary = (SELECT salary
              FROM emp_copy
              WHERE eno = 7499)
WHERE eno=7788;

SELECT * FROM emp_copy WHERE eno=7788; --ANALYST / 3000


--#7
/*사원번호 7369
업무와 동일한
모든 사원의 부서번호를
7369의 현재 부서로 갱신
*/

SELECT * FROM emp_copy WHERE eno=7369;
SELECT eno, job, dno FROM emp_copy WHERE job='CLERK';
UPDATE emp_copy
SET dno = (SELECT dno FROM emp_copy WHERE eno = 7369)
WHERE job = (SELECT job FROM emp_copy WHERE eno=7369);


--#8
/*
department 테이블 복사
DEPT_COPY 생성
*/
SELECT * FROM dept_copy;
DROP TABLE dept_copy;
CREATE TABLE dept_copy
AS
SELECT * FROm department;


--#9
/*
dept_copy 테이블에서
부서명이 RESEARCH 부서를 제거
*/
DELETE FROM dept_copy
WHERE dname='RESEARCH';

SELECT * FROm dept_copy;


--#10
/*
dept_copy 테이블에서
부서번호가 10 또는 40인 부서 제거
*/
DELETE FROM dept_copy
WHERE dno in(10, 40);
