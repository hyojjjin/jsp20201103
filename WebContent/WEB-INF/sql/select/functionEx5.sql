SELECT * FROM employee;
SELECT ename, salary, commission, salary + commission as sum
FROM employee;
SELECT ename, commission, NVL(commission, 0) FROM employee;

--p131
SELECT ename, salary, commission NVL(commiddion, 0) FROM employee order by job;
---

SELECT ename, commission, NVL2(