SELECT * FROM employee;
SELECT MAX(salary) FROM employee;
SELECT MAX(salary) FROM employee GROUP BY job;


--p149 ~ 151
SELECT dno as "�μ� ��ȣ", avg(salary) as "�޿� ���"
FROM employee group by dno;

SELECT avg(salary) as "�޿� ���" FROM employee group by dno;

SELECT dno, job, count(*), sum(salary) FROM employee group by dno, job ORDER BY dno, job;

SELECT job, avg(salary)/

--�׷��Լ��� where�� �Ұ�

SELECT job, avg(salary) FROM employee
GROUP;


--p 152~ 153
SELECT dno, max(salary) from employee group by dno having max(salary) >= 3000;

SELECT job, count(*), sum(salary) FROM employee WHERE job NOT LIKE '%MANAGER%' GROUP BY job having sum(salary) >= 5000
order by sum(salary);

SELECT MAX(avg(salary)) FROM employee GROUP by dno;



