SELECT sysdate FROM dual;
SELECT sysdate +1 FROM dual;
SELECT sysdate -1 FROM dual;

SELECT ename, hiredate, sysdate - hiredate FROM employee;
SELECT ename, hiredate, ROUND(sysdate-hiredate) FROM employee;

--p117 - 119
SELECT sysdate FROM dual;
SELECT sysdate-1 어제, sysdate 오늘, sysdate+1 내일 FROM dual;
SELECT ROUND(sysdate-hiredate) 근무일수 FROM employee;
--


SELECT ROUND(sysdate) FROM dual;
SELECT ROUND(sysdate, 'YEAR') FROM dual;
SELECT ROUND(sysdate, 'MONTH') FROM dual;

SELECT TRUNC(sysdate, 'YEAR') FROM dual;
SELECT TRUNC(sysdate, 'MONTH') FROM dual;



--p120
SELECT hiredate, TRUNC(hiredate, 'MONTH') from employee;
--

SELECT MONTHS_BETWEEN(SYSDATE, hiredate) FROM employee;
SELECT MONTHS_BETWEEN(SYSDATE, TO_DATE('2020-10-13', 'yyyy-mm-dd')) FROM dual;


--p121
SELECT ename, sysdate, hiredate, TRUNC(MONTHS_BETWEEN (SYSDATE, HIREDATE)) FROM employee;
--


SELECT ADD_MONTHS(sysdate, 12) FROM dual;
SELECT ADD_MONTHS(sysdate, 6) FROM dual;
SELECT ADD_MONTHS(sysdate, -12) FROM dual;

--p121
SELECT ename, hiredate, ADD_MONTHS(hiredate, 6) FROM employee;
--


SELECT NEXT_DAY(sysdate, '토요일') FROM dual;
SELECT NEXT_DAY(sysdate, '금요일') FROM dual;
SELECT NEXT_DAY(sysdate, 6) FROM dual;

select * FROM employee;

SELECT LAST_DAY(sysdate) FROM dual;



--p122 ~ 123
SELECT sysdate, NEXT_DAY(sysdate, '토요일') FROM dual;
SELECT ename, hiredate, LAST_DAY(hiredate) FROM employee;
--
