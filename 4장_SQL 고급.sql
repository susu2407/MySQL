/*
	날짜 : 2025/08/08
    이름 : 이수연
    내용 : 4장 SQL 고급 실습
*/

create table Member (
	uid		varchar(10) primary key,
    name	varchar(10) not null,
    hp		varchar(13) unique not null,
    pos		varchar(10) default '사원',
    dep		int default null,
    rdate   datetime not null
);

drop table department;
create table Department (
	depNo	int primary key,
    name	varchar(10) not null,
    tel		varchar(12) not null
);

drop table sales;
create table Sales (
	seq		int auto_increment primary key,
    uid		varchar(10) not null,
    year	year not null,
    month	int not null,
    sale	int default null
);

insert into member values ('a101', '박혁거세', '010-1234-1001', '부장', 101, '2020-11-19 11:39:48');
insert into member values ('a102', '김유신', '010-1234-1002', '차장', 101, '2020-11-19 11:39:48');
insert into member values ('a103', '김춘추', '010-1234-1003', '사원', 101, '2020-11-19 11:39:48');
insert into member values ('a104', '장보고', '010-1234-1004', '대리', 102, '2020-11-19 11:39:48');
insert into member values ('a105', '강감찬', '010-1234-1005', '과장', 102, '2020-11-19 11:39:48');
insert into member values ('a106', '이성계', '010-1234-1006', '차장', 103, '2020-11-19 11:39:48');
insert into member values ('a107', '정철', '010-1234-1007', '차장', 103, '2020-11-19 11:39:48');
insert into member values ('a108', '이순신', '010-1234-1008', '부장', 104, '2020-11-19 11:39:48');
insert into member values ('a109', '허균', '010-1234-1009', '부장', 104, '2020-11-19 11:39:48');
insert into member values ('a110', '정약용', '010-1234-1010', '사원', 105, '2020-11-19 11:39:48');
insert into member values ('a111', '박지원', '010-1234-1011', '사원', 105, '2020-11-19 11:39:48');
select * from member;

insert into Department values (101, '영업1부', '051-512-1001');
insert into Department values (102, '영업2부', '051-512-1002');
insert into Department values (103, '영업3부', '051-512-1003');
insert into Department values (104, '영업4부', '051-512-1004');
insert into Department values (105, '영업5부', '051-512-1005');
insert into Department values (106, '영업지원부', '051-512-1006');
insert into Department values (107, '인사부', '051-512-1007');
select * from department;

INSERT INTO Sales (uid, year, month, sale) VALUES ('a101', 2018, 1,  98100);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a102', 2018, 1, 136000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a103', 2018, 1,  80100);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a104', 2018, 1,  78000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a105', 2018, 1,  93000);

INSERT INTO Sales (uid, year, month, sale) VALUES ('a101', 2018, 2,  23500);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a102', 2018, 2, 126000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a103', 2018, 2,  18500);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a105', 2018, 2,  19000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a106', 2018, 2,  53000);

INSERT INTO Sales (uid, year, month, sale) VALUES ('a101', 2019, 1,  24000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a102', 2019, 1, 109000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a103', 2019, 1, 101000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a104', 2019, 1,  53500);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a107', 2019, 1,  24000);

INSERT INTO Sales (uid, year, month, sale) VALUES ('a102', 2019, 2, 160000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a103', 2019, 2, 101000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a104', 2019, 2,  43000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a105', 2019, 2,  24000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a106', 2019, 2, 109000);

INSERT INTO Sales (uid, year, month, sale) VALUES ('a102', 2020, 1, 201000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a104', 2020, 1,  63000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a105', 2020, 1,  74000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a106', 2020, 1, 122000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a107', 2020, 1, 111000);

INSERT INTO Sales (uid, year, month, sale) VALUES ('a102', 2020, 2, 120000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a103', 2020, 2,  93000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a104', 2020, 2,  84000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a105', 2020, 2, 180000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a108', 2020, 2,  76000);
select * from sales;

SELECT * FROM Member WHERE name='김유신';
SELECT * FROM Member WHERE pos='차장' AND dep=101;
SELECT * FROM Member WHERE pos='차장' OR dep=101;
SELECT * FROM Member WHERE name != '김춘추';
SELECT * FROM Member WHERE name <> '김춘추';
SELECT * FROM Member WHERE pos='사원' OR pos='대리';
SELECT * FROM Member WHERE pos IN ('사원', '대리');
SELECT * FROM Member WHERE dep IN (101, 102, 103);
SELECT * FROM Member WHERE name LIKE '%신';
SELECT * FROM Member WHERE name LIKE '김%';
SELECT * FROM Member WHERE name LIKE '김__';
SELECT * FROM Member WHERE name LIKE '_성_';
SELECT * FROM Member WHERE name LIKE '정_';
SELECT * FROM Sales WHERE sale > 50000;
SELECT * FROM Sales WHERE sale >= 50000 AND sale < 100000 AND month=1;
SELECT * FROM Sales WHERE sale BETWEEN 50000 AND 100000;
SELECT * FROM Sales WHERE sale NOT BETWEEN 50000 AND 100000;
SELECT * FROM Sales WHERE year IN (2020);
SELECT * FROM Sales WHERE month IN (1, 2);

select * from sales order by sale;		-- 오름차순
select * from sales order by sale asc;	-- 오름차순
select * from sales order by sale desc;	-- 내림차순
select * from member order by name;		-- 오름차순
select * from member order by name desc; -- 내림차순
select * from member order by rdate asc; -- 오름차순
select * from sales where sale > 50000 order by sale desc;
select * from sales where sale > 50000 order by year, month, sale desc; -- sale>50000인 row를 year오름차순 안에 month 오름차순 안에서 slae을 내림차순으로 정렬alter

select * from sales limit 3; -- 조회된 결과에서 위에서부터 3개를 select한다.
select * from sales limit 0, 3; -- 조회된 결과에서 처음(1번째)부터 3개를 가져온다.( 1번째가 0이다. 배열처럼. 초과라고 생각하자.)
select * from sales limit 1,2; -- 조회된 결과에서 2번재부터 2개를 가져온다.
select * from sales limit 5, 3;
select * from sales order by sale desc limit 3, 5; -- sale을 내림차순 정렬에서 4번째부터 5개를 가져온다.
select * from sales where sale < 50000 order by sale desc limit 3;
select * from sales 		-- Sales 테이블에서
	where sale > 50000 		-- slae값이 50000초과 중
	order by year desc, 	-- year을 내림차순한 수
			month, 			-- 같은 year값 안에서 month을 오름차순하고
            sale desc 		-- 같은 year, 같은 month 안에서 sale을 내림차순한 것 중
            limit 5;		-- 위에서 5개만 가져온다.

-- 실슴 4-6 (내장함수)
select sum(sale) as 합계 from sales;
select avg(sale) as 평균 from sales;
select max(sale) as 최대값 from sales;
select min(sale) as 최소값 from sales;

select ceiling(1.2);	-- 결과 2 -- 올림. 소수점 위로 올림.
select ceiling(1.8);	-- 결과 2

select floor(1.2); 		-- 결과 1. 내림. 소수점 아래를 버리고, 가장 가짜운 작은 정수로 반환.
select floor(1.8);		-- 결과 1
select floor(3.9);		-- 결과 3
select floor(-3.1);		-- 결과 -4
select floor(-3.9);		-- 결과 -4 -- 양수는 단순히 버림과 같지만, 음수는 더 작은 쪽의 정수로 바뀐다.

select round(1.8); -- 결과 2 -- 반올림
select round(1.8); -- 결과 2

select rand();	-- 매 호출마다 0이상 1미만의 실수 반환.
select ceiling(rand() * 10);

select count(sale) as 갯수 from sales;
select count(*) as 갯수 from sales;

select left('HelloWorld', 5); -- Hello
select right('HelloWorld', 5); -- World
select substring('HelloWorld', 6, 5); -- World -- SUBSTRING(str, pos, len)에서 인덱스는 1부터 시작.

select concat('Hello', 'World'); -- 문자열을 이어붙이는 함수
select concat('Hello', 'World', 'JAVA'); -- HelloWorldJAVA
SELECT CONCAT('Hello', ' ', 'World', '!');  -- Hello World!
-- NULL 포함 시 전체가 NULL
SELECT CONCAT('A', NULL, 'B');  -- 결과: NULL
-- CONCAT_WS: 구분자 + NULL 무시
SELECT CONCAT_WS('-', '2025', NULL, '08', '08'); -- 2025-08-08
-- 여러 행을 콤마로 모으고 싶다? GROUP_CONCAT.
SELECT GROUP_CONCAT(name ORDER BY name SEPARATOR ', ') FROM user5; -- 결과 : 신사임당, 이수연, 허난설헌

select concat(uid, name, hp) from member where uid='a108'; -- 결과 : a108이순신010-1234-1008

select curdate();  -- 2025-08-08 -- CURDATE()는“오늘 날짜”를 돌려주는 함수
SELECT NOW();      -- 2025-08-08 12:49:26

-- 7일 전
SELECT DATE_SUB(CURDATE(), INTERVAL 7 DAY); -- 2025-08-01

-- 이번 달 1일
SELECT DATE_FORMAT(CURDATE(), '%Y-%m-01'); -- 2025-08-01

SELECT CURTIME(); -- 12:50:31 -- 오늘 시간만

INSERT INTO Member VALUES ('a112', '유관순', '010-1234-1012', '대리', 107, NOW());

-- 실습 4-7. 2018년 1월 매출의 총합을 구하시오.
select sum(sale) as '2018년 1월 총합' from sales where year=2018 and month=1;

-- 실습 4-8. 2019년 2월에 5만원 이상 매출에 대한 총합과 평균을 구하시오.
select sum(sale) as '2019년 2월 총합', 
		avg(sale) as '2019년 2월 평균' 
			from sales 
            where sale >=50000 
            and year=2019 
            and month=2;

-- 실습 4-9. 2020년 전체 매출 가운데 최저, 최고 매출을 구하시오.
select min(sale) as 최저매출, max(sale) as 최고매출 from sales where year=2020;

SELECT * FROM sales
	WHERE year = 2020
		AND (sale = (SELECT MIN(sale) FROM sales WHERE year = 2020)
		OR sale = (SELECT MAX(sale) FROM sales WHERE year = 2020));


-- 실습 4-10 그룹별로 조회
select uid from sales group by uid;
select year from sales group by year;
select uid, year from sales group by uid, year;
select uid, count(*) as 건수 from sales group by uid;
select uid, sum(sale) as 합계 from sales group by uid;
select uid, avg(sale) as 평균 from sales group by uid;

select uid, year, sum(sale) as 합계 from sales group by uid, year;

select uid, year, sum(sale) as 합계 from sales group by uid, year order by year asc, 합계 desc;

select uid, year, sum(sale) as 합계 from sales 
	where sale >= 50000 
	group by uid, year 
    order by year asc, 합계 desc;


-- 실습 4-11 그룹화에 검색조건 설정
select uid, sum(sale) as 합계 from sales
	group by uid
    having 합계 >= 200000;