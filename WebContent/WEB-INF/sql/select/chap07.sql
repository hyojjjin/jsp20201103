--1
SELECT ename, job
FROM employee
WHERE job = (SELECT job FROM employee WHERE eno = 7788);

�����ȣ�� 7788
�������� ���� ��� ǥ��

--2
SELECT ename, job
FROM employee
WHERE salary > (SELECT salary FROM employee WHERE eno = 7499);

�����ȣ 7499
�޿��� �� ���� �����
����̸�, ������


--3
SELECT ename, job, salary
FROM employee
WHERE salary = (SELECT MIN(salary) FROM employee);

�׷��Լ� ���
�ּ� �޿��� �޴�
��� �̸�, ������ �޿�

--4
SELECT job, ROUND(avg(salary), 1)
FROM employee
GROUP BY job
having round(avg(salary), 1) = (SELECT MIN(avg(salary)) FROM employee group by job);
??

��� �޿��� ���� ���� �����
��� ������
����, ��� �޿�

--5
SELECT ename, salary, dno
FROM employee
WHERE salary IN (SELECT MIN(salary) FROM employee group by dno);


���μ��� �ּ� �޿��� �޴� 
����� �̸�, �޿�, �μ� ��ȣ