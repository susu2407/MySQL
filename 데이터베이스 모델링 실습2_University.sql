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

