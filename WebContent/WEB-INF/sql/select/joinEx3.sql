SELECT * FROM employee e, department d;

SELECT * FROM employee e1, department e2;

SELECT * FROM employee WHERE eno = 7369;
SELECT * FROM employee WHERE eno = 7902;

SELECT * FROM employee e, department d
WHERE e.dno = d.dno;

SELECT * FROM employee e1, employee e2
WHERE e1.manager = e2.eno;

--p173 ~
SELECT employees.ename as "사원이름", manager.ename as "직속상관이름"
FROM employee employees, employee manager
WHERE employees.manager = manager.eno;

SELECT employees.ename ||'의 직속 상관은'|| manager.ename
from employee employees join employee manager
on employees.manager = manager.eno;

