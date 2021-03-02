select * from employee;
SELECT * FROM employee WHERE ename = 'SMITH';
SELECT * FROM employee WHERE salary > 1000;
SELECT * FROM employee WHERE commission < 500;
SELECT * FROM employee WHERE salary >= 3000;
SELECT * FROM employee WHERE salary <= 2000;
SELECT * FROM employee WHERE ename <= 'G';
SELECT * FROM employee WHERE ename != 'SMITH';
SELECT * FROM employee WHERE ename <> 'SMITH';
SELECT * FROM employee WHERE ename ^= 'SMITH';
-- / 뜻 : 같지 않다 / != 같지 않다.  <> 크거나 작은 것들, ^= 같은 것을 제외하고
SELECT * FROM employee WHERE hiredate = '1981/02/20';
SELECT * FROM employee WHERE hiredate = '81/02/20';


--p44 ~ 47
SELECT * FROM employee WHERE salary >= 1500;
SELECT * FROM employee WHERE dno = 10;
SELECT * FROM employee WHERE ename = 'SCOTT';
SELECT * FROM employee WHERE hiredate = '1981/01/01';
--


SELECT * FROM employee
WHERE hiredate >= '1981/01/01' AND salary > 3000;

SELECT * FROM employee
WHERE hiredate >= '1981/01/01' OR salary > 3000;


SELECT * FROM employee
WHERE NOT salary > 3000;

SELECT * FROM employee
WHERE ename > 'G' AND salary > 2000 AND dno <> 30;


-- p47 ~ 51
SELECT * FROM employee
WHERE dno = 10 AND job = 'MANAGER';

SELECT * FROM employee
WHERE dno = 10 OR job = 'MANAGER';

SELECT * FROM employee
WHERE NOT dno = 10;

SELECT * FROM employee
WHERE dno <> 10;

SELECT * FROM employee
WHERE salary >= 1000 AND salary <= 1500;

SELECT * FROM employee
WHERE salary < 1000 OR salary > 1500;

SELECT * FROM employee
WHERE commission = 300 or commission = 500 OR commission = 1400;

--


SELECT * FROM employee
WHERE salary >= 3000 AND salary <= 5000;

SELECT * FROM employee
WHERE salary BETWEEN 3000 AND 5000;

SELECT * FROM employee
WHERE hiredate BETWEEN '1982/01/01' AND '1982/12/31';

SELECT * FROM employee
WHERE salary < 3000 OR salary > 5000;


