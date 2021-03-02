SElECT * FROM employee;
SELECT * FROM employee WHERE ename = 'WARD';
SELECT * FROM employee WHERE ename LIKE 'W%';
--W% : W로 시작하는

SELECT * FROM employee WHERE ename LIKE '%D';
--%D : D로 끝나는

SELECT * FROM employee WHERE ename LIKE '%D%';
--%D% : D가 중간에 있는

SELECT * FROM employee WHERE ename LIKE '_';
--'_' : 글자 자리. 언더바가 있다면 글자 하나가 있어야함.

SELECT * FROM employee WHERE ename LIKE '_A__';
--_A__ : A 앞에 한 글자, 뒤에 두 글자.




-- p55 ~ 57

SELECT * FROM employee WHERE ename like 'F%';

SELECT * FROM employee WHERE ename = 'F';
--연산자나 와일드 카드를 사용하지 않아서 검색할 수 없음.

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
