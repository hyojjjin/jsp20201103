--@chap2 혼자해보기
--#1
/*
덧셈 연산자를 이용
모든 사원에대해
300 급여 인상
사원의 이름, 급여, 인상된 급여 출력
*/

SELECT ename, salary, salary+300 from employee;


--#2
/*
사원의 이름, 급여, 연간 총수입을
총수입이 많은 것부터 작은 순으로 출력
단, 연간 총수입은 월급*12 + 100으로 계산
*/

SELECT ename, salary, salary*12+100 from employee order by salary*12+100 desc;
-- 기본 정렬 -> 오름차순.
-- 오름차순 order by asc.
-- 내림차순 order by desc;


--#3
/*
급여가 2000을 넘는 사원의 
이름, 급여
급여가 많은 것부터 작은 순으로
*/

SELECT ename, salary from employee where salary > 2000 order by salary desc;


--#4
/*
사원번호가 7788인 사원의
이름, 부서번호
*/

SELECT ename, dno from employee where eno = 7788;


--#5
/*
급여가 2000에서 3000사이에 포함되지 않는 사원의
이름과 급여
*/

SELECT ename, salary from employee where salary <= 2000 or salary >= 3000;
SELECT ename, salary from employee where salary not between 2000 and 3000;


--#6
/*
1981년 2워 20일부터 1981년 5월 1일 사이에 입사한 사원의
이름, 담당업무, 입사일 출력
*/

SELECT ename, job, hiredate from employee where hiredate between '1981/02/20' and '1981/05/01';


--#7
/*
부서번호가 20및 30에 속한 사원의
이름, 부서번호
이름을 기준한 오름차순 (영문자순)
*/
SELECT ename, dno from employee where dno = 20 or dno = 30 order by ename;
SELECT ename, dno from employee where dno IN(20, 30) order by ename;


--#8
/*
급여가 2000에서 3000사이에 포함
부서번호가 20 또는 30인 사원의
이름, 급여, 부서 번호
이름순으로 출력
*/
SELECT ename, salary, dno from employee where salary between 2000 and 3000 and dno IN(20, 30) order by ename; 


--#9
/*
1981에 입사한 사원의
이름과 입사일
like와 와일드 카드 사용
*/

SELECT ename, hiredate from employee where hiredate like '81/%';


--#10
/*
관리자가 없는 사원의
이름, 담당없무
*/

SELECT ename, job from employee where manager is null;


--#11
/*커미션을 받을 수 있는 자격이 되는 사원의
이름, 급여, 커미션
급여 및 커미ㅕㄴ을 기준으로 내림차순
*/

SELECT ename, salary, commission from employee where commission is not null order by salary, commission;


--#12
/*
이름의 세번째 문자가 R인 사원의
이름
*/
SELECT ename from employee where ename like '__R%';


--#13
/*
이름에 A와 E를 모두 포함하고 있는 사원의
이름
*/
SELECT ename from employee where ename like '%A%' and ename like '%E%';


--#14
/*
담당업무가 CLERK 또는 영업사원 Salesman
급여가 1600, 950, 또는 1300이 아닌 사원의
이름, 업무 급여
*/
SELECT ename, job, salary from employee where job in('CLERK', 'SALESMAN') and salary not in(1600, 950, 1300);


--#15
/*
커미션이 500 이상인 사원의
이름, 급여, 커미션
*/
SELECT ename, salary, commission from employee where commission >= 500;



--@chap4 혼자해보기
--#1
/*
SUBSTR 함수 사용
사원들의 입사 년도와 입사한 달
*/

SELECT SUBSTR(hiredate, 1, 2) 년도, SUBSTR(hiredate, -5, 2) 달 from employee;


--#2
/*
SUBSTR 함수 사용
4월에 입사한 사원 출력
*/

SELECT * FROM employee where SUBSTR(hiredate, 4, 2) = '04';


--#3
/*
MOD 함수
사원번호가 짝수인 사람만 출력
*/
SELECT * FROM employee where mod(eno, 2) = 0;


--#4
/*
입사일
연도는 2자리 월은 숫자 요일은 약어
*/
SELECT TO_CHAR(hiredate, 'YY/MON/DD DY') from employee;


--#5
/*
올해 며칠이 지났는 지
현재 날짜에서 올해 1월 1일을 뺀 결과
to_date 사용하여 데이터형 일치
*/

SELECT T from dual;


--#5
/*
사원들의 상관 사번 출력
상관이 없는 사원에 대해서는
null 대신 o으로 출력
*/

SELECT eno, ename, NVL(manager, 0) from employee;

/*
//물어봐야해
NVL2(A, null이면, null이 아니면)??*/


--#7
/*
DECODE 함수 사용
직급에 따라 급여 인상
직급이 analyst인 사원은 200, salesman은 180, manager 150 clerk 100 인상
*/

SELECT ename, job, salary, DECODE(job, 'ANALYST', salary+200,
                                        'SALESMAN', salary+180,
                                        'MANAGER', salary+150,
                                        'CLERK', salary+100,
                                        salary) as up_salary from employee;
                                        

--@chap5 혼자해보기
--#1
/*
모든 사원의 급여 최고액, 최저액, 총액 및 평균 급여
*/
SELECT MAX(salary) Maximum, MIN(salary) Minimum, SUM(salary) Sum, ROUND(AVG(salary)) Average FROM employee;


--#2
/*
업무 유형별로
급여 최고액, 최저액, 총액 및 평균액
평균은 정수 반올림
*/
SELECT job, MAX(salary) Maximum, MIN(salary) Minimum, SUM(salary) Sum, ROUND(AVG(salary)) Average FROM employee group by job; 


--#3
/*
count(*) 함수 이용
담당 업무가 동일한 사원 수
*/
SELECT job, count(*) FROM employee group by job;


--#4
/*
관리자의 수
*/
SELECT count(manager) FROM employee;


--#5
/*
급여 최고액, 급여 최저액의 차액
*/
SELECT MAX(salary)-MIN(salary) DIFFERENCE FROM employee;


--#6
/*
직급별 사원의 최저 급여
관리자를 알 수 없는 사원, 최저 급여가 2000 미만인 그룹은 제외
급여에 대한 내림차순
*/
SELECT job, MIN(salary) FROM employee group by job HAVING NOT MIN(salary) < 2000 order by MIN(salary) desc;


--#7
/*
각 부서에 대해
부서번호, 사원수, 부서 내의 모든 사원의 평균 급여
평균 급여는 소수점 둘째 자리로 반올림
*/
SELECT dno, count(*) as "Number of People", ROUND(AVG(salary), 2) as salary FROM employee group by dno;

--,  

--#8
/*
각 부서에 대해
부서 이름, 지역명, 사원수, 부서내 모든 사원의 평균 급여
평균 급여는 정수로 반올림
*/
select d2.dname, d2.loc, a.c, a.s from 
(
SELECT d.dno as dno, count(*) as c, ROUND(AVG(e.salary)) as s FROM employee e join department d on e.dno = d.dno group by d.dno
) a join department d2 on a.dno = d2.dno;

select * from department;
--#9
/*
업무를 표시한 후
해당 업무에 대해
부서번호 별 급여, 부서 10, 20, 30의 급여 총액
*/
SELECT job, dno, decode(dno, 10, SUM(salary)) "부서 10", 
                 decode(dno, 20, SUM(salary)) "부서 20",
                 decode(dno, 30, SUM(salary)) "부서 30", SUM(salary) 총액 FROM employee group by job, dno order by dno;
                 
                 
                 
--@chap6 혼자해보기
--#1
/*
EQUI 조인 사용
SCOTT 사원의
부서번호와 부서 이름
*/

SELECT d.dno, d.dname FROM employee e, department d WHERE e.dno = d.dno and ename = 'SCOTT';


--#2
/*
INNER JOIN과 ON 연산자 사용
사원이름, 사원이 소속된 부서, 지역명
*/
SELECT ename, dname, loc FROM employee e join department d on e.dno=d.dno;


--#3
/*
INNER JOIN과 USING 연산자 사용
10번 부서의
모든 업무, 지역명
*/
SELECT job, loc FROM employee e JOIN department d USING (dno) WHERE dno = 10; 


--#4
/*
NATURAL JOIN 사용
커미션을 받는 모든 사원의
이름, 부서이름, 지역명
*/
SELECT ename, dname, loc, commission FROM employee e NATURAL JOIN department d WHERE commission > 0;


--#5
/*
EQUI 조인과 WildCard 사용
이름에 A가 포함된
모든 사원의 이름, 부서명
*/
SELECT ename, dname FROM employee e, department d WHERE e.dno=d.dno and e.ename like '%A%';


--#6
/*
NATURAL JOIN 사용
NEW YORK 근무하는 사원의
이름, 업무, 부서번호, 부서명
*/
SELECT ename, job, dno, dname FROM employee e NATURAL JOIN department d WHERE d.loc = 'NEW YORK';


--#7
/*
SELF JOIN 사용
사원의 이름, 사원번호, 관리자 이름, 관리자 번호
*/
SELECT * FROM employee;
SELECT e.ename, e.eno, m.ename, e.manager, m.eno FROM employee e, employee m WHERE e.manager = m.eno; 


--#8
/*
OUTER JOIN, SELF JOIN 사용
관리자가 없는 사원을 포함
사원번호를 기준으로 내림차순 정렬
이름, 매니저 번호, 매니저 사번, 매니저 이름
*/
SELECT e.ename, e.manager, m.eno, m.ename FROM employee  e, employee m WHERE e.manager = m.eno(+) order by e.eno desc;


--#9
/*
SELF JOIN 사용
지정한 사원(SCOTT)의
이름, 부서번호, 동일한 부서에서 근무하는 사원 이름
*/
SELECT e.ename, e.dno, a.ename FROM employee e, employee a WHERE e.dno = a.dno AND e.ename = 'SCOTT' AND a.ename != 'SCOTT';  


--#10
/*
SELF JOIN 사용
WARD 사원보다
늦게 입사한 사원의
이름, 입사일
*/
SELECT a.ename, a.hiredate FROM employee e, employee a WHERE e.hiredate < a.hiredate AND e.ename = 'WARD' order by hiredate; 


--#11
/*
SELF JOIN 사용
관리자보다 먼저 입사한 사원의
이름, 입사일, 관리자 이름, 관리자 입사일
*/
SELECT e.ename, e.hiredate, m.ename, m.hiredate FROM employee e, employee m WHERE e.hiredate < m.hiredate ;
