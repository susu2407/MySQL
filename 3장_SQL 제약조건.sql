/*
	날짜 : 2025/08/08
    이름 : 이수연
    내용 : 3장 제약조건 실습
*/

-- 실습 3-1
CREATE TABLE User2 (
	uid VARCHAR(10) PRIMARY KEY, -- 테이블의 첫번재 컬럼은 무조건 pk
	name VARCHAR(10),
	birth CHAR(10),
	addr VARCHAR(50)
);
-- 실습 3-2
insert into user2 values ('a101', '김유신', '1999-09-19', '김해시');

-- 실습 3-3
CREATE TABLE User3 (
	uid VARCHAR(10) PRIMARY KEY,
	name VARCHAR(10),
	birth CHAR(10),
	hp CHAR(13) UNIQUE, -- 중복된 값을 허용하지 않음
	addr VARCHAR(50)
);
-- 실습 3-4
insert into user3 values ('a101', '김유신', '1999-09-19', '010-1234-1001', '김해시');
insert into user3 values ('a102', '김춘추', '1999-09-19', '010-1234-1002', '경주시');
insert into user3 values ('a103', '장보고', '1998-01-20', null, '완도시');
insert into user3 values ('a104', '강감찬', '1997-01-20', null, '서울시');
select * from user3;

-- 실습 3-5
CREATE TABLE Parent (
	pid VARCHAR(10) PRIMARY KEY,
	name VARCHAR(10),
	birth CHAR(10),
	addr VARCHAR(100)
);

drop table child;
create table child (
	cid varchar(10) primary key,
	name varchar(10),
    hp char(13) unique,
    parent varchar(10),
    foreign key (parent) references parent (pid) -- 존재하지 않는 parent의 pid값 입력을 차단
);
-- 실습 3-6
insert into parent values ('p101', '홍길동', '1999-09-09', '부산시');
insert into child values ('c101', '홍아들', '010-1234-2001', 'p101');
insert into child values ('c102', '김아들', '010-1234-3001', 'p110');
select * from parent;
select * from child;

-- 실습 3-7
CREATE TABLE User4(
	uid VARCHAR(10) PRIMARY KEY, -- pk는 not null
	name VARCHAR(10) NOT NULL, -- 반드시 입력 허용
	gender CHAR(1), -- 모든 컬럼은 default가 null
	age INT DEFAULT 1,
	hp CHAR(13) UNIQUE, -- UNIQUE는 default가 null
	addr VARCHAR(20)
);
-- 실습 3-8
insert into user4 values ('a102', '김유신', 'M', 23, '010-1234-0001', '김해시');
insert into user4 values ('a101', '신사임당', 'F', 21, null, '김해시');
select * from user4;


-- 실습 3-9
CREATE TABLE User5(
	seq INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(10) NOT NULL,
	gender CHAR(1) CHECK (gender IN ('M', 'F')),
	age INT DEFAULT 1 CHECK (age > 0 AND age < 100),
	addr VARCHAR(20)
);
-- 실습 3-10
insert into user5 (name, gender, age, addr) values ('김유신', 'M', 23, '김해시');
insert into user5 (name, gender, age, addr) values ('신사임당', 'F', 21, '강릉시');
delete from user5 where seq=4;

insert into user5 (name, gender, age, addr) values ('허난설헌', 'F', 23, '광주시');
select * from user5;
insert into user5 (name, gender, age, addr) values ('이수연', 'F', 32, '부산시');
