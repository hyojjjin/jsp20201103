-- 제약 사항 추가
DROP TABLE emp_copy;

CREATE TABLE emp_copy
AS
SELECT * FROM employee;

SELECT * FROM emp_copy;

SELECT * FROM user_constraints
WHERE table_name='EMPLOYEE';

SELECT * FROM user_constraints
WHERE table_name='EMP_COPY';

ALTER TABLE emp_copy
ADD PRIMARY KEY (eno);

DROP TABLE dept_copy;

CREATE TABLE dept_copy
AS
SELECT * FROM department;

ALTER TABLE dept_copy
ADD CONSTRAINT dept_copy_dno_pk PRIMARY KEY (dno);

SELECT * FROM user_constraints
WHERE table_name='DEPT_COPY';

-- 책 (259 쪽)
ALTER TABLE emp_copy
ADD CONSTRAINT emp_copy_dno_fk
FOREIGN KEY(dno) REFERENCES dept_copy(dno);

-- 책 (260 쪽)
ALTER TABLE emp_copy
MODIFY ename CONSTRAINT emp_copy_ename_nn NOT NULL;


-- 제약사항 삭제
ALTER TABLE emp_copy
DROP CONSTRAINT emp_copy_ename_nn;

SELECT * FROM user_constraints
WHERE table_name='EMP_COPY';

SELECT * FROM user_constraints
WHERE table_name='DEPT_COPY';

ALTER TABLE emp_copy
DROP CONSTRAINT SYS_C007398;

-- dept_copy primary key 제약사항 삭제
ALTER TABLE dept_copy
DROP CONSTRAINT DEPT_COPY_DNO_PK;

ALTER TABLE emp_copy
DROP CONSTRAINT EMP_COPY_DNO_FK;

ALTER TABLE dept_copy
DROP PRIMARY KEY CASCADE;
