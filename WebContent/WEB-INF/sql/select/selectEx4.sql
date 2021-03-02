SELECT * FROM dual;
--�׻� �����ϴ� ��𼭵� ��� �� �ִ� ����ִ� â


SELECT sysdate FROM dual;
SELECT sysdate FROM employee;


SELECT LOWER(ename) AS ename FROM employee;
SELECT UPPER(ename) AS name FROM employee;
SELECT INITCAP(ename) AS name FROM employee;
SELECT INITCAP('oracle mania') AS name FROM dual;


--p102 ~ 104
SELECT 'Oracle mania', UPPER('Oracle mania'), LOWER('Oracle mania'), INITCAP('Oracle mania') FROM dual;

SELECT ename, lower(ename), job, initcap(job) FROM employee;
SELECT eno, ename, dno FROM employee WHERE ename = 'scott';
SELECT eno, ename, dno FROM employee WHERE LOWER(ename)='scott';
SELECT eno, ename, dno FROM employee WHERE INITCAP(ename)='Scott';
--


SELECT * FROM employee WHERE LOWER(ename) LIKE '%a%';
SELECT ename, LENGTH(ename) as length FROM employee;
SELECT LENGTH('�����α׷���') FROM dual;

SELECT ename, LENGTHB(ename) len FROM employee;
SELECT ename. LENGTHB('�����α׷���') len FROM employee;


--p105
SELECT length('OracleMania'), length('����Ŭ�ŴϾ�') FROM dual;
SELECT lengthb('OracleMania'), lengthb('����Ŭ�ŴϾ�') FROM dual;

SELECT CONCAT(ename, job) FROM employee;
SELECT ename || job FROM employee;
SELEcT ename || ',' || job FROM employee;

SELECT ename, SUBSTR(ename, 1, 2) FROM employee;
--SUBSTR (������ ���� ��, ���� ��ġ, ����)

SELECT ename, SUBSTR(ename, -2, 2) FROM employee;
---2 �ڿ��� �ι�° ���ں���




--p106 ~ 107
SELECT 'Oracle', 'mania', concat('Oracle', 'mania') FROM dual;
SELECT substr('Oracle mania', 4, 3), substr('Oracle mania'), -4, 3)
FROM dual;

SELECT * FROM empyloyee
WHERE substr(ename, -1, 1) = 'N';

SELECT * FROM employee WHERE substr(hiredate, 1, 2) = '87';


SELECT ename LPAD(ename, 10, #) FROM employee;
SELECT ename RPAD(ename, 10, #) FROM employee;

--P110~111
SELECT LPAD(salary, 10, '*') FROM employee;
SELECT RPAD(salary, 10, '*') FROM employee;
--


SELECT TRIM('  ABC  ') FROM dual;
SELECT RTRIM('  ABC  ') FROM dual;
SELECT LTRIM('  ABC  ') FROM dual;



--p112 ~ 113
SELECT '  Oracle mania  ', LTRIM('  Oracle mania  '), RTRIM('  Oracle mania  ')
FROM dual;

SELECT 'Oracle mania',
TRIM('O' FROM 'Oracle mania') FROM dual;

SELECT TRIM('  Oracle mania  ') FROM dual;
--


