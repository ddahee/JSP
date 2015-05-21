create user jspuserc identified by 1234;

-- SQL
-- 1) 데이터 정의 언어(DDL) : create(생성), alter(추가, 스키마추가), drop(전체제거)
-- 2) 데이터 조작 언어(DML) : insert(행추가), update(데이터수정), delete(행 삭제), select(검색)
-- 3) 데이터 제어 언어(DCL) : grant(권한주기), revoke(권한뺏기)

-- 테이블 생성
create table save
(
	name		varchar2(20)	primary key,
	picture		varchar2(10),
	text		varchar2(100),
	coment		varchar2(200),
	regdate		date			default sysdate -- 입력날짜
)

select * from save