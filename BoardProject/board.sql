create user jspuserc identified by jsp1234;

-- SQL
-- 1) ������ ���� ���(DDL) : create(����), alter(�߰�, ��Ű���߰�), drop(��ü����)
-- 2) ������ ���� ���(DML) : insert(���߰�), update(�����ͼ���), delete(�� ����), select(�˻�)
-- 3) ������ ���� ���(DCL) : grant(�����ֱ�), revoke(���ѻ���)

-- ���̺� ����
create table board
(
	num			number			primary key,
	name 		varchar2(10),
	title 		varchar2(100),
	content		varchar2(1000),
	hits 		number 			default 0,
	wdate 		date 			default sysdate,
	attachment	varchar2(50)	--÷������
)
-- ������ ����
create sequence board_seq

select * from board
order by num desc

insert into board
value(board_seq.nextval,'','')