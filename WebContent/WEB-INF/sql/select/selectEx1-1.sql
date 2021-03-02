SELECT * FROM employee;
SELECT * FROM bonus;
SELECT * FROM department;
SELECT * FROM salgrade;

SELECT ename FROM employee;
SELECT eno, ename FROM employee;
SELECT ename, eno FROM employee;
SELECT ename, salary FROM emplyee;
SELECT ename, salary, salary*12 FROM employee; 
SELECT ename, salary/100 FROM employee; 
SELECT ename, salary + 100 FROM employee; 
SELECT ename, salary-100 FROM employee;
SELECT ename, salary, salary*12 AS ø¨∫¿ FROM employee;
SELECT ename, salary/100 ø¨∫¿ FROM employee;

-- «—¡Ÿ ¡÷ºÆ

/*ø©∑Ø ¡Ÿ ¡÷ºÆ */ 


SELECT * FROM employee;
SELECT ename, salary, commission, salary + commission FROM employee;
SELECT ename, salary, commission, NVL(commission, 0) FROM employee;
SELECT ename, salary + NVL(commission, 0) FROM employee;
SELECT ename, salary  + NVL(commission, 0) «’ FROM employee;

-- p32 ~ 38
SELECT * FROM employee;
SELECT eno, ename FROM employee;
SELECT ename, salary, salary*12 FROM employee;
SELECT ename, salary, job, dno, commission, salary*12, salary*12+commission FROM employee;
SELECT ename, salary, job, dno, NVL(commission, 0), salary*12, salary*12+NVL(commission, 0) FROM employee;
SELECT ename, salary*12+NVL(commission, 0) ø¨∫¿ FROM employee;
SELECT ename, salary*12+NVL(commission, 0) AS ø¨∫¿ FROM employee;
SELECT ename, salary*12+NVL(commission, 0) "ø¨ ∫¿" FROM employee;
SELECT dno FROM employee;
SELECT distinct dno FROM employee;

--


SELECT dno FROM employee;
SELECT distinct(dno) FROM employee;
SELECT distinct dno FROM employee;


/*
SELECT DRECTURE
*/