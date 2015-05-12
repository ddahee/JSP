create user jspuserc identified by jsp1234;

-- SQL
-- 1) 데이터 정의 언어(DDL) : create(생성), alter(추가, 스키마추가), drop(전체제거)
-- 2) 데이터 조작 언어(DML) : insert(행추가), update(데이터수정), delete(행 삭제), select(검색)
-- 3) 데이터 제어 언어(DCL) : grant(권한주기), revoke(권한뺏기)

-- 테이블 생성
create table member
(
	id			varchar2(15)	primary key,
	password	varchar2(10),
	name		varchar2(20),
	age			number,
	gender		char(6),
	addr		varchar2(100),
	regdate		date			default sysdate -- 가입날짜
)

select * from member

insert into member
values('test1', '1234', '홍길동', 20, '1', '서울시', '2015-04-17')

drop table member

update member
set addr = '경기도'
where id = 'test'

delete member
where id = 'test1'
