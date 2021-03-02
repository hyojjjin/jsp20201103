--1
SELECT * FROM employee;
SELECT ename, salary, salary+300 FROM employee;


--2
SELECT ename, salary, salary*12+100 FROM employee ORDER BY salary DESC;

--3
SELECT ename, salary FROM employee WHERE salary > 2000 ORDER BY salary DESC;


--4
SELECT ename, eno FROM employee;
SELECT ename, eno FROM employee
WHERE eno = 7788;

--5
SELECT * FROM employee
WHERE salary < 2000 OR salary > 3000;

--6
SELECT ename, job, hiredate FROM employee
WHERE hiredate BETWEEN '1981/02/20' AND '1981/05/01';


--7
SELECT ename, dno FROM employee WHERE dno IN(20,30) ORDER BY ename;

--8
SELECT ename, salary, dno FROM employee
WHERE salary > 2000 AND salary < 3000 AND dno IN(20, 30)
ORDER BY ename;

--9
SELECT ename, hiredate FROM employee
WHERE to_char(hiredate, 'yyyy-mm-dd') LIKE '1981%';
SELECT ename, hiredate FROM employee
WHERE hiredate LIKE '81%';


--10
SELECT ename, job FROM employee
WHERE manager IS null;

--11
SELECT ename, salary, commission FROM employee
WHERE commission IS NOT null
ORDER BY salary, commission;


--12
SELECT ename FROM employee
WHERE ename LIKE '__R%';

--13
SELECT ename FROM employee
WHERE ename LIKE '%A%' AND ename LIKE '%E%';


--14
SELECT ename, job, salary FROM employee
WHERE salary NOT IN(1600, 950, 1300);

--15
SELECT ename, salary, commission FROM employee
WHERE commission >= 500;


