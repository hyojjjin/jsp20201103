--1
SELECT MAX(salary) as "MAXimum", MIN(salary) as "Minimum", SUM(salary) as "Sum", ROUND(AVG(salary)) as "Average" FROM employee;

--2
SELECT job, MAX(salary) as "MAXimum", MIN(salary) as "Minimum", SUM(salary) as "Sum", ROUND(AVG(salary)) as "Average" FROM employee group BY job;

--3
SELECT job, COUNT(*) FROM employee group by job;

--4
SELECT COUNT(manager) as "COUNT(MANAGER)" FROM employee;


--5
SELECT (MAX(salary) - MIN(salary)) as DIFFERENCE FROM employee;

--6
SELECT job, MIN(salary) FROM employee group by job
    having not min(salary) < 2000
    order by min(salary) desc;
    
SELECT *FROM employee;

--SELECT job, MIN(salary) FROM employee WHERE manager is not null and salary >= 2000 group by job;
[2000 �̸� ����� ���Ե� �׷�]�� �����ؾ������� ����� ���� ����.

SELECT job, MIN(salary) FROM employee WHERE manager is not null group by job having not min(salary) < 2000
order by min(salary) desc;
   
�̰� �� �ȴ���??
���� ���� ���������!
�����ڤѤ� �� �� ���� ���??


���޺� ����� ���� �޿��� ������������
�����ڸ� �� �� ���� ��� ����
���� �޿��� 2000 �̸��� �׷��� ����


--7
SELECT dno, COUNT(dno), ROUND(avg(salary), 2) FROM employee group by dno ORDER BY dno;

�� �μ���
�μ� ��ȣ, �����, �μ� �� ��� ��� ����� ���
��� �޿��� �Ҽ��� ���ڸ�

--8
SELECT decode(dno, 10, 'ACCOUNTRING', 
                   20, 'RESEARCH',
                   30, 'SALES') as "dname",
       decode(dno, 10, 'NEW YORK',
                   20, 'DALLAS',
                   30, 'CHICAGO') as "Location", count(ename) as "Number of People", ROUND(avg(salary)) as "Salary" FROM employee group by dno;

�� �μ���
�μ���ȣ �̸�, ������, �����, �μ��� ��� ����� ��� �޿�
��� �޿��� ���� �ݿø�

�μ� �̸�, ������ ���� ����? => decode�� �� �־��ֱ�!

--9
SELECT sum(salary) FROM employee;
SELECT job, dno, decode(dno, 10, sum(salary)) as "�μ� 10",
                 decode(dno, 20, sum(salary)) as "�μ� 20",
                 decode(dno, 30, sum(salary)) as "�μ� 30",
                 sum(salary) as "�Ѿ�" FROM employee group by job, dno
                 order by dno;

������ ǥ���ϰ�
������ ���� �μ� �� �޿��� ����ϰ�

