--1
사원의 부서 번호와 부서 이름
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


사원이름, 사원이 소속된 부서 이름, 지역명
inner join on 연산자 사용

--3
SELECT dno, e.job, loc
FROM employee e inner join department d
USING(dno)
WHERE dno = 10;


inner join using 사용
10번 부서, 10번 부서의 업무, 부서 지역명


--4
SELECT * FROM employee;

SELECT e.ename, d.dname, loc
FROM employee e natural join department d
WHERE commission > 0;

natural join 사용
커미션을 받는
모든 사원의 이름, 부서이름, 지역명

--5
SELECT e.ename, d.dname
FROM employee e, department d
WHERE e.dno = d.dno AND e.ename like '%A%';


EQUI 조인과  와일드카드
이름에 A가 들어간 모든
사원의 이름, 부서명 출력

--6
SELECT e.ename, e.job, dno, d.dname
FROM employee e natural join department d
WHERE loc = 'NEW YORK';


natural join 사용
뉴욕에 근무하는
사원 이름, 업무, 부서 번호, 부서 명


SELECT * FROM employee, department WHERE employee.dno = department.dno;
SELECT * FROM employee NATURAL JOIN department;


--7
SELECT e.ename as Employee, e.eno as Emp#,  m.eno as Manager, m.ename as Mgr#
FROM employee e, employee m
WHERE e.manager = m.eno;

SELF join
사원의 이름, 사원 번호
관리자 이름, 관리자 번호



--8
SELECT e.ename as Employee, e.eno as Emp#,  m.eno as Manager, m.ename as Mgr#
FROM employee e, employee m
WHERE e.manager = m.eno(+)
order by e.eno DESC;



outer join self join
관리자가 없는 사원을 포함
사원번호를 기준으로
내림차순 정렬

--9
SELECT e.ename, e.dno, a.ename
FROM employee e, employee a
WHERE e.dno = a.dno
AND e.ename = 'SCOTT'
AND a.ename != 'SCOTT';

self join
지정한 사원 이름
부서 번호
지정한 사원과 동일 부서 근무 사원 이름


--10
SELECT a.ename, a.hiredate
FROM employee e, employee a
WHERE a.hiredate > e.hiredate
AND e.ename = 'WARD'
order by hiredate; 
self join
ward 사원보다 늦게 입사한 사원의 입사일 출력

--11
SELECT e.ename, e.hiredate, a.ename, a.hiredate
FROM employee e, employee a
WHERE e.manager = a.eno
AND e.hiredate < a.hiredate;

self join
관리자보다 먼저 입사한
사원의 이름, 입사일, 관리자이름, 입사일