--chap07 ȥ���غ���
--1
/*
�����ȣ�� 7788�� �����
�������� ���� �����
�̸�, ����
*/
SELECT ename, job FROM employee where job = (SELECT job FROM employee WHERE eno = 7788);


--2
/*
�����ȣ�� 7499
������� �޿��� ���� �����
�̸�, ����
*/
SELECT ename, job FROM employee WHERE salary > (SELECT salary FROM employee WHERE eno = 7499);

--3
/*
�ּ� �޿��� �޴� �����
�̸�, ��� ����, �޿�
�׷��Լ� ���
*/
SELECT ename, job, salary FROM employee WHERE salary = (SELECT MIN(salary) from employee);

--4
/*
��� �޿��� ���� ���� �����
�������� ã�Ƽ�
���ް� ��� �޿��� ǥ��
*/
SELECT job, AVG(salary) FROM employee WHERE salary = (SELECT MIN(salary) FROM employee);
/*�𸣰ڴ�

--5
/*
�� �μ��� �ּ� �޿��� �޴� �����
�̸�, �޿�, �μ���ȣ
*/
SELECT ename, salary, dno FROM employee WHERE salary in(SELECT MIN(salary) FROM employee group by dno);

--6
/*
�������� �м��� (ANALYST)�� �������
�޿��� �۰�, ������ �м����� �ƴ� �����
�����ȣ, �̸�, ������, �޿�
*/
SELECT eno, ename, job, salary FROM employee WHERE job <> 'ANALYST' AND salary < any (SELECT salary FROM employee WHERE job = 'ANALYST');


--7
/*
���������� ���� �����
�̸�
*/
SELECT ename FROM employee WHERE eno in(SELECT eno FROM employee WHERE manager is null);


--8
/*
���������� �ִ� �����
�̸�
*/
