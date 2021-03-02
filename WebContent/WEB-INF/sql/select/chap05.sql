--1
SELECT MAX(salary) as "MAXimum", MIN(salary) as "Minimum", SUM(salary) as "Sum", ROUND(AVG(salary)) as "Average" FROM employee;

--2
SELECT job, MAX(salary) as "MAXimum", MIN(salary) as "Minimum", SUM(salary) as "Sum", ROUND(AVG(salary)) as "Average" FROM employee group BY job;

--3
SELECT job, COUNT(*) FROM employee group by job;

--4
SELECT COUNT(manager) as "COUNT(MANAGER)" FROM employee;


--5
SELECT (MAX(salary) - MIN(salary)) as DIFFERENCE FROM employee;

--6
SELECT job, MIN(salary) FROM employee group by job
    having not min(salary) < 2000
    order by min(salary) desc;
    
SELECT *FROM employee;

--SELECT job, MIN(salary) FROM employee WHERE manager is not null and salary >= 2000 group by job;
[2000 미만 사람이 포함된 그룹]을 제외해야하지만 사람을 먼저 뺐다.

SELECT job, MIN(salary) FROM employee WHERE manager is not null group by job having not min(salary) < 2000
order by min(salary) desc;
   
이게 왜 안대지??
은지 갈때 물어봐야지!
관리자ㅡㄹ 알 수 없는 사원??


직급별 사원의 최저 급여를 내림차순으로
관리자를 알 수 없는 사원 제외
최저 급여가 2000 미만인 그룹은 제외


--7
SELECT dno, COUNT(dno), ROUND(avg(salary), 2) FROM employee group by dno ORDER BY dno;

각 부서의
부서 번호, 사원수, 부서 내 모든 평균 사원의 평균
평균 급여는 소수점 두자리

--8
SELECT decode(dno, 10, 'ACCOUNTRING', 
                   20, 'RESEARCH',
                   30, 'SALES') as "dname",
       decode(dno, 10, 'NEW YORK',
                   20, 'DALLAS',
                   30, 'CHICAGO') as "Location", count(ename) as "Number of People", ROUND(avg(salary)) as "Salary" FROM employee group by dno;

각 부서의
부서번호 이름, 지역명, 사원수, 부서내 모든 사원의 평균 급여
평균 급여는 정수 반올림

부서 이름, 지역명 어케 알지? => decode로 값 넣어주기!

--9
SELECT sum(salary) FROM employee;
SELECT job, dno, decode(dno, 10, sum(salary)) as "부서 10",
                 decode(dno, 20, sum(salary)) as "부서 20",
                 decode(dno, 30, sum(salary)) as "부서 30",
                 sum(salary) as "총액" FROM employee group by job, dno
                 order by dno;

업무를 표시하고
업무에 대해 부서 별 급여를 출력하고

