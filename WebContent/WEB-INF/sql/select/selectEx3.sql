SElECT * FROM employee;
SELECT * FROM employee WHERE ename = 'WARD';
SELECT * FROM employee WHERE ename LIKE 'W%';
--W% : W�� �����ϴ�

SELECT * FROM employee WHERE ename LIKE '%D';
--%D : D�� ������

SELECT * FROM employee WHERE ename LIKE '%D%';
--%D% : D�� �߰��� �ִ�

SELECT * FROM employee WHERE ename LIKE '_';
--'_' : ���� �ڸ�. ����ٰ� �ִٸ� ���� �ϳ��� �־����.

SELECT * FROM employee WHERE ename LIKE '_A__';
--_A__ : A �տ� �� ����, �ڿ� �� ����.




-- p55 ~ 57

SELECT * FROM employee WHERE ename like 'F%';

SELECT * FROM employee WHERE ename = 'F';
--�����ڳ� ���ϵ� ī�带 ������� �ʾƼ� �˻��� �� ����.

SELECT * FROM employee WHERE ename like '%M%';

SELECT * FROM employee WHERE ename like '%N';

SELECT * FROM employee WHERE ename like '_A%';

SELECT * FROM employee WHERE ename not like '%A%';
--




SELECT * FROM employee;
SELECT * FROM employee WHERE commission = NULL;
SELECT * FROM employee WHERE commission IS NULL;
SELECT * FROM employee WHERE commission IS NOT NULL;


--p58 ~ 60
SELECT ename, dno, commission FROM employee;
SELECT * FROM employee WHERE commission = null;

SELECT * FROM employee WHERE commission IS null;
SELECT * FROM employee WHERE commission IS NOT null;

----


SELECT * FROM employee ORDER BY emame;
SELECT * FROM employee ORDER BY eno;

SELECT * FROM employee 
ORDER BY eno ASC;


SELECT * FROM employee 
ORDER BY eno DESC;


SELECT dno, ename FROM employee 
ORDER BY dno DESC, ename ASC;


--p61 ~ 64
SELECT * FROM employee ORDER BY salary ASC;

SELECT * FROM employee ORDER BY salary;

SELECT * FROM employee ORDER BY salary DESC;

SELECT * FROM employee ORDER BY ename;

SELECT * FROM employee ORDER BY hiredate DESC;

SELECT * FROM employee ORDER BY salary DESC, ename ASC;
--
