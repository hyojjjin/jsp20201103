--��������

SELECT manager FROM employee
WHERE eno = '7499';

SELECT ename FROM employee
WHERE eno = 7698;

SELECT ename FROM employee
WHERE eno = (SELECT manager FROM employee
WHERE eno = '7499');

--p189 ~ 190
SELECT ename, dno
FROM employee
WHERE dno = (select dno from employee where ename = 'SCOTT');

SELECT ename, job, salary
FROM employee
WHERE salary = (select min(salary) from employee);

SELECT dno, min(salary)
FROM employee
group by dno
having min(salary)  > (select min(salary) from employee where dno = 30);
--

SELECT ename FROM employee
WHERE salary > (SELECT salary FROM employee WHERE eno = 7499);

--���� �� ���� ����

/*
IN : ���� �ϳ��� ������
ANY(SOME) : �ϳ� �̻��� �����ϸ�.
ALL : ��� �����ϸ�

in, any �Ȱ��� ��. ǥ���� ����.
*/

SELECT dno
FROM department
WHERE dno <= 20;


SELECT ename, dno
FROM employee
WHERE dno IN (SELECT dno FROM department WHERE dno <= 20);

--p192
SELECT eno, ename
FROM employee
WHERE salary In (SELECT min(salary) from employee group by dno);

SELECT eno, ename
FROM employee
WHERE (dno, salary) In (SELECT dno, min(salary) from employee group by dno);


