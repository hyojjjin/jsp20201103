-- 14��, 8����
SELECT * FROM employee;

--4���� 3����
SELECT * FROM department;

SELECT * FROM employee, department;
--���� ���ϰ�, ���� ���ϰ�

SELECT eno, ename, dno, dname FROM employee, dapartment;

SELECT eno, ename, employee.dno edno, department.dno ddno
FROM employee, department
WHERE eno = 7369;

SELECT eno, ename, employee.dno edno, department.dno ddno
FROM employee, department
WHERE eno = 7369 AND employee.dno = deparment.dno;

--p165 ~ 168
SELECT * FROM employee, department
WHERE employee.dno = department.dno;

SELECT eno, ename, dname FROM employee, department
WHERE employee.dno = department.dno
And eno = 7788;

SELECT eno, ename, dname, dno
FROM employee, department
WHERE employee.dno = department.dno
ANd eno = 7788;

SELECT employee .eno, employee.ename, depatment.dname, employee.dno
FROM employee, deparment WHERE employee.dno = department.dno
AND employee.eno = 7788;
--

--equt join
SELECT * FROM employee, department
WHERE  employee.dno =  department.dno
AND eno = 7369;

SELECT *FROM employee e, department d
WHEre e.dno = d.dno;

--p168
SELECT e.eno, e.ename, d.dname, e.dno
FROM employee e, department d
where employy, departmentd WHERE e.dno = d.dno;



--join
SELECT * FROM employee natural join department;
���� Į������ ������

SELECT * FROM employee natural join department
WHERE eno = 7782;

--

--join using
SELECT * FROM employee JOIN department USING(dno);
SELECT * FROM employee JOIN department USING(dno)
WHERE eno = 7788;

--join on
SELECT * FROM employee e JOIN department d ON e.dno = d.dno;
SELECT * FROM employee e JOIN department d ON e.dno = d.dno
WHERE eno = 7788;

--p169 ~ 170
SELECT e.eno, e.ename, d.dname, e.dno
FROM employee e natural join department d
WHERE e.eno = 7788; -- ���̺� ��Ī�� ����ϸ� ���� �߻�. �� ���̺� ��� ������ �̸��� ���̺� ������ ������ �־����.

SELECT e.eno, e.ename, d.dname, dno
FROM employee e natural join department d
WHERE e.eno = 7788;

SELECT e.eno, e.ename, d.dname, dno
FROM employee e join department d
USING(dno) WHERE e.eno = 7788;

SELECT e.eno, e.ename, d.dname, e.dno
FROM employee e join department d
ON e.dno = d.dno
WHERE e.eno = 7788;