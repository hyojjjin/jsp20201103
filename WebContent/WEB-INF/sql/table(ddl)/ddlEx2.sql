--table 변경
--ALTER TABLE
--칼럼 추가, 칼럼 변경, 칼럼 삭제

--컬럼 추가
--ALTER TABLE table_name ADD (new_col DATATYPE,,,);

--책 예제(210쪽)
DESC dept20;
ALTER TABLE dept20
ADD(birth date);

--컬럼 변경
--ALTER TABLE tname MODIFY(colNAME type,,,);

--책 예제(211쪽)
ALTER TABLE dept20
MODIFY ename varchar2(30);
DESC dept20;

--컬럼 삭제
ALTER TABLE dept20
DROP COLUMN ename;
DESC dept20;

--TABLE 이름 변경
--RENAME
RENAME dept20 TO emp20;



--p215
DROP TABLE emp20;
DESC emp20;

--테이블의 데이터만 삭제
--TRUNCATE TABLE
--책 216
SELECT * FROM dept_second;
TRUNCATE TABLE dept_second;
