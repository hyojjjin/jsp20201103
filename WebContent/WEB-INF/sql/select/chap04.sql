--chap04 - testbook

--1
SELECT SUBSTR(hiredate, 1, 2) �⵵ , SUBSTR(hiredate, 4, 2) �� FROM employee;

--2
SELECT * FROM employee WHERE SUBSTR(hiredate, 4, 2) = '04';

--3
SELECT * FROM employee WHERE MOD(eno, 2) = '0';

--4
SELECT hiredate, TO_CHAR(hiredate, 'YY/MON/dd DY') FROM employee;

--5
SELECT TRUNC(sysdate - TO_DATE('20/01/01')) FROM dual;

���� - 1�� 1�� = ���� ��¥