/*
	날짜 : 2025/08/12
    이름 : 이수연
    내용 : 데이터베이스 모델링 실습2
*/
-- (root에서 작업하는 것은 권장되지 않음)
-- 사용자 추가
create user 'university'@'%' identified by '1234';
grant all privileges on university.* to 'university'@'%';
flush privileges;

-- 데이터 입력
-- 1. Department 학과
insert into department values (10, '국어국문학과', '051-510-1010');
insert into Department values (11, '영어영문학과', '051-510-1011');
insert into Department values (20, '경영학과', '051-510-1020');
insert into Department values (21, '경제학과', '051-510-1021');
insert into Department values (22, '정치외교학과', '051-510-1022');
insert into Department values (23, '사회복지학과', '051-510-1023');
insert into Department values (30, '수학과', '051-510-1030');
insert into Department values (31, '통계학과', '051-510-1031');
insert into Department values (32, '생명과학과', '051-510-1032');
insert into Department values (40, '기계공학과', '051-510-1040');
insert into Department values (41, '전자공학과', '051-510-1041');
insert into Department values (42, '컴퓨터공학과', '051-510-1042');

-- 2.Professor 교수
INSERT INTO Professor VALUE ('P10101', 10, '김유신', '750120-1234567', '010-1101-1976', 'kimys@hg.ac.kr', '서울');
INSERT INTO Professor VALUE('P10102', 10, '계백', '740610-1234567', '010-1102-1975', 'gaeback@hg.ac.kr', '서울'),
('P11101', 11, '김관창', '880529-1234567', '010-1103-1989', 'kwanch@hg.ac.kr', '대전'),
('P11103', 11, '김춘추', '780412-1234567', '010-2101-1979', 'kimcc@hg.ac.kr', null);
INSERT INTO Professor VALUE ('P11104', 11, '이사부', '650911-1234567', '010-2104-1966', 'leesabu@hg.ac.kr', '대전');
INSERT INTO Professor VALUE ('P22110', 22, '장보고', '780727-1234567', '010-3101-1979', 'jangbg@hg.ac.kr', '대구');
INSERT INTO Professor VALUE ('P23102', 23, '선덕여왕', '830614-1234567', '010-4101-1984', 'gueen@hg.ac.kr', null);
INSERT INTO Professor VALUE ('P31101', 31, '강감찬', '641020-1234567', '010-5101-1965', 'kang@hg.ac.kr', '대구');
INSERT INTO Professor VALUE ('P31104', 31, '신사임당', '711127-1234567', '010-6101-1972', 'sinsa@hg.ac.kr', '부산');
INSERT INTO Professor VALUE ('P40101', 40, '이이', '910906-1234567', '010-7103-1992', 'leelee@hg.ac.kr', '부산');
INSERT INTO Professor VALUE ('P40102', 40, '이황', '881208-1234567', '010-7104-1989', 'hwang@hg.ac.kr', null);
INSERT INTO Professor VALUE ('P42103', 42, '송상현', '760313-1234567', '010-8101-1977', 'ssh@hg.ac.kr', '광주');

-- 3.Student 학생
insert into student value ('20101001', 10, 'P10101', '정우성', '760121-1234567', '010-1101-7601', null, '서울');
insert into student value ('20101002', 10, 'P10101', '이정재', '750611-1234567', '010-1102-7506', null, '서울');
insert into student value ('20111011', 11, 'P11103', '전지현', '890530-1234567', '010-1103-8905', 'jjh@naver.com', null);
insert into student value ('20111013', 11, 'P11103', '이나영', '790413-1234567', '010-2101-7904', 'lee@naver.com', '대전');
insert into student value ('20111014', 11, 'P11104', '원빈' , '660912-1234567', '010-2104-6609', 'one@daum.net', '대전');
insert into student value ('21221010', 22, 'P22110', '장동건', '790728-1234567', '010-3101-7907', 'jang@naver.com', '대구');
insert into student value ('21231002', 23, 'P23102', '고소영', '840615-1234567', '010-4101-8406', 'goso@daum.net', null);
insert into student value ('22311011', 31, 'P31104', '김연아', '651021-1234567', '010-5101-6510', 'yuna@daum.net', '대구');
insert into student value ('22311014', 31, 'P31104', '유재석', '721128-1234567', '010-6101-7211', null, '부산');
insert into student value ('22401001', 40, 'P40101', '강호동', '920907-1234567', '010-7103-9209', null, '부산');
insert into student value ('22401002', 40, 'P40101', '조인성', '891209-1234567', '010-7104-8912', 'join@gmail.com', '광주');
insert into student value ('22421003', 42, 'P42103', '강동원', '770314-1234567', '010-8101-7703', 'dong@naver.com', '광주');

-- 4. Course 강좌
insert into Course values
('101001', 'P10101', '대학 글쓰기', 2, 100, '본102'),
('101002', 'P10102', '한국어음운론', 3, 300, '본102'),
('101003', 'P10102', '한국현대문학사', 3, 300, '본103'),
('111011', 'P11103', '중세영문학', 3, 200, '본201'),
('111012', 'P11104', '영미시', 3, 200, '본201'),
('231110', 'P23102', '사회복지학개론', 2, 180, '별관103'),
('311002', 'P31101', '통계의 이해', 2, 160, '별관303'),
('311003', 'P31104', '기초 통계학', 3, 600, '별관303'),
('401019', 'P40101', '기계역학', 3, 600, '공학관 102'),
('421012', 'P42103', '데이터베이스', 3, 800, '공학관 103');

-- 5.Enrollment 수강
insert into enrollment (stdNo, csNo, proNo) values 
	('20101001', '101001', 'P1010enrollment1'),
	('20101001', '101002', 'P10102'),
	('20111013', '111011', 'P11103'),
	('21231002', '231110', 'P23102'),
	('22401001', '401019', 'P40101'),
	('22401001', '421012', 'P42103'),
	('20101001', '101003', 'P10102'),
	('22421003', '311003', 'P31104'),
	('22421003', '421012', 'P42103'),
	('20111013', '111012', 'P11104');

-- 문제1. 모든 학생의 학생번호, 이름, 휴대폰, 학과번호, 학과명을 조회하시오.
select
	a.stdNo AS 학생번호,
    a.stdName as 이름,
    a.stdHp as 휴대폰,
    a.depNo as 학과번호,
    b.depName as 학과명
from student a join department b on a.depNo = b.depNo;

-- 문제2. 모든 교수의 교수번호, 이름, 휴대폰, 학과번호, 학과명을 조회하시오. 
select
	a.proNo,
    a.proName,
    a.proHp,
    a.depNo,
    b.depName
from professor a join department b on a.depNo = b.depNo;

-- 문제3. 모든 강좌의 강좌번호, 강좌명, 담당교수명, 휴대폰을 조회하시오. 
select
	a.csNo,
    a.csName,
    b.proName,
    b.proHp
from course a join professor b on a.proNo = b.proNo;

-- 문제4. 모든 강좌의 강좌번호, 강좌명, 담당교수 번호, 담당교수명, 휴대폰, 학과번호, 학과명을 조회하시오. 
select
	a.csNo,
    a.csName,
    a.proNo,
    b.proName,
    b.proHp,
    b.depNo,
    c.depName
from course a 
join professor b on a.proNo = b.proNo
join department c on b.depNo = c.depNo;

-- 문제5. 모든 수강 내역에서 학생번호, 학생명, 강좌번호, 강좌명, 교수번호, 교수명을 조회하시오. 
select
	c.stdNo,
    c.stdName,
    a.csNo,
    a.csName,
    b.proNo,
    b.proName
from course a 
join professor b on a.proNo = b.proNo
join student c on b.proNo = c.proNo;

-- 문제6. 수강 테이블에 출석점수, 중간고사점수, 기말고사 점수를 임의로 입력하시오.(1~100 사이)
-- 강사님 찬스
set sql_safe_updates = 0; -- where절 없는 update를 실행하기 위해 safe mode 해제
UPDATE Enrollment SET
							scoreAttd = CEIL(RAND() * 100),
							scoreMid   = CEIL(RAND() * 100),
							scoreFinal = CEIL(RAND() * 100);

-- 문제7. 수강 테이블에 출석점수, 중간고사점수, 기말고사 점수를 모두 더한 평균을 구해 총점에 입력하시오. 
-- 문제8. 수강 테이블에 총점을 기준으로 A ~ F 등급을 입력하시오. 
-- 문제9. 수강 테이블에서 총점이 가장 큰 점수를 조회하시오. 
-- 문제10. 수강 테이블에서 정우성 학생의 총점의 평균을 조회하시오
