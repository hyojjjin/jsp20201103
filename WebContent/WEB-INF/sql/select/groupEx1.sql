SELECT commission, nvl(commission, 0) FROM employee;

SELECT SUM(salary) FROM employee;
SELECT AVG(salary) FROM employee;
SELECT MIN(salary) FROM employee;
SELECT MAX(salary) FROM employee;

SELECT COUNT(salary) FROM employee;

SELECT * FROM employee;
SELECT COUNT (*) FROM employee; -- ���̺� �����Ͱ� �����


--p144 ~ 145
SELECT SUM(salary) as "�޿� �Ѿ�",
        AVG(salary) as "�޿� ���",
        
        
--p146 ~ 147
SELECT COUNT(*) as "����� ��" FROM employee;

SELECT COUNT(commission) as "Ŀ�̼��� �޴� ����� ��" FROM employee;

SELECT COUNT(distinct job) as "���� ������ ����" FROM employee;
    
