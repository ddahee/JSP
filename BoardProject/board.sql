create user jspuserc identified by jsp1234;

-- SQL
-- 1) 데이터 정의 언어(DDL) : create(생성), alter(추가, 스키마추가), drop(전체제거)
-- 2) 데이터 조작 언어(DML) : insert(행추가), update(데이터수정), delete(행 삭제), select(검색)
-- 3) 데이터 제어 언어(DCL) : grant(권한주기), revoke(권한뺏기)

-- 테이블 생성
create table board
(
	num			number			primary key,
	name 		varchar2(10),
	title 		varchar2(100),
	content		varchar2(1000),
	hits 		number 			default 0,
	wdate 		date 			default sysdate,
	attachment	varchar2(50)	--첨부파일
)
-- 시퀀스 생성
create sequence board_seq

select * from board
order by num desc

insert into board
value(board_seq.nextval,'','')