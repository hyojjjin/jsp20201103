--1
����� �μ� ��ȣ�� �μ� �̸�
SELECT e.ename, d.dno, d.dname 
FROM employee e, department d
WHERE e.dno = d.dno
AND e.ename = 'SCOTT';


SELECT ename, dno, dname FROM employee WHERE ename like 'SCOTT';

SELECT e.ename, e.dno, d.dname
FROM employee e, department d
WHERe e.dno = d.dno
AND e.ename='SCOTT';


--2
SELECT e.ename, d.dname, loc
FROM employee e join department d
ON e.dno = d.dno
ORDER BY dname;


����̸�, ����� �Ҽӵ� �μ� �̸�, ������
inner join on ������ ���

--3
SELECT dno, e.job, loc
FROM employee e inner join department d
USING(dno)
WHERE dno = 10;


inner join using ���
10�� �μ�, 10�� �μ��� ����, �μ� ������


--4
SELECT * FROM employee;

SELECT e.ename, d.dname, loc
FROM employee e natural join department d
WHERE commission > 0;

natural join ���
Ŀ�̼��� �޴�
��� ����� �̸�, �μ��̸�, ������

--5
SELECT e.ename, d.dname
FROM employee e, department d
WHERE e.dno = d.dno AND e.ename like '%A%';


EQUI ���ΰ�  ���ϵ�ī��
�̸��� A�� �� ���
����� �̸�, �μ��� ���

--6
SELECT e.ename, e.job, dno, d.dname
FROM employee e natural join department d
WHERE loc = 'NEW YORK';


natural join ���
���忡 �ٹ��ϴ�
��� �̸�, ����, �μ� ��ȣ, �μ� ��


SELECT * FROM employee, department WHERE employee.dno = department.dno;
SELECT * FROM employee NATURAL JOIN department;


--7
SELECT e.ename as Employee, e.eno as Emp#,  m.eno as Manager, m.ename as Mgr#
FROM employee e, employee m
WHERE e.manager = m.eno;

SELF join
����� �̸�, ��� ��ȣ
������ �̸�, ������ ��ȣ



--8
SELECT e.ename as Employee, e.eno as Emp#,  m.eno as Manager, m.ename as Mgr#
FROM employee e, employee m
WHERE e.manager = m.eno(+)
order by e.eno DESC;



outer join self join
�����ڰ� ���� ����� ����
�����ȣ�� ��������
�������� ����

--9
SELECT e.ename, e.dno, a.ename
FROM employee e, employee a
WHERE e.dno = a.dno
AND e.ename = 'SCOTT'
AND a.ename != 'SCOTT';

self join
������ ��� �̸�
�μ� ��ȣ
������ ����� ���� �μ� �ٹ� ��� �̸�


--10
SELECT a.ename, a.hiredate
FROM employee e, employee a
WHERE a.hiredate > e.hiredate
AND e.ename = 'WARD'
order by hiredate; 
self join
ward ������� �ʰ� �Ի��� ����� �Ի��� ���

--11
SELECT e.ename, e.hiredate, a.ename, a.hiredate
FROM employee e, employee a
WHERE e.manager = a.eno
AND e.hiredate < a.hiredate;

self join
�����ں��� ���� �Ի���
����� �̸�, �Ի���, �������̸�, �Ի���