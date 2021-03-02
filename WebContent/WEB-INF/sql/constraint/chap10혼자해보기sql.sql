--@chap10 혼자해보기
--#1
/*
employee 테이블 복사
emp_sample 이름의 테이블 생성
사원번호 칼럼에 primary key 조건 지정
제약 조건 이름은 my_emp_pk
*/
DROP TABLE emp_sample;
CREATE TABLE emp_sample
AS
SELECT * FROM employee
WHERE 0=1;

ALTER TABLE emp_sample
ADD constraint my_emp_pk primary key(eno);
 
SELECT * FROM user_constraints
WHERE constraint_name LIKE 'MY%';


--#2
/*
부서 테이블의
부서번호 컬럼에
primary key 제약 조건 지정
제약 조건 이름은 my_dept_pk
*/
DROP TABLE dept_copy;

