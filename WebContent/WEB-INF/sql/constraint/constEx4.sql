--책 252쪽
DROP TABLE customer;
CREATE TABLE customer (
    id VARCHAR(20) constraint customer_id_uk unique,
    pwd VARCHAR(20) constraint customer_pwd_nn not null,
    name VARCHAR(20) constraint customer_name_nn not null,
    phone VARCHAR(30),
    address VARCHAR(100));
    
    SELECT * FROM user_constraints
    WHERE constraint_name LIKE 'CUSTOMER%';
    
    
--책 (253쪽)
DROP TABLE customer;
CREATE TABLE customer(
    id VARCHAR2(20),
    pwd VARCHAR2(20) constraint customer_pwd NOT NULL,
    name VARCHAR2(20) constraint customer_name_nn NOT NULL,
    phone VARCHAR2(30),
    address VARCHAR2(100),
    CONSTRAINT customer_id_pk PRIMARY KEY (id)
    );
    
    SELECT * FROM user_constraints
    WHERE constraint_name LIKE 'CUSTOMER%';


--책 255쪽
CREATE TABLE emp_second (
eno number(4) constraint emp_seconde_eno_pk primary key,
ename VARCHAR2(10),
job VARCHAR2(9),
dno number(2) constraint emp_seconde_dno_fk references department);

SELECT * FROM user_constraints
WHERE constraint_name LIKE 'CUSTOMER%';

SELECT * FROM user_constraints
WHERE table_name = 'CUSTOMER';


DROP TABLE emp_second;
CREATE table emp_second (
eno number(4) constraint emp_seconde_eno_pk primary key,
ename VARCHAR2(10),
salary number(7, 2) CONSTRAINT emp_second_salary_min check(salary>0)
);

--책 256쪽