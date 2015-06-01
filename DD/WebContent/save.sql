create user jspuserc identified by 1234;

-- SQL
-- 1) ������ ���� ���(DDL) : create(����), alter(�߰�, ��Ű���߰�), drop(��ü����)
-- 2) ������ ���� ���(DML) : insert(���߰�), update(�����ͼ���), delete(�� ����), select(�˻�)
-- 3) ������ ���� ���(DCL) : grant(�����ֱ�), revoke(���ѻ���)

-- ���̺� ����
create table save
(
	num			number			primary key,
	title		varchar2(20),
	text		varchar2(200),
	coment		varchar2(200),
	wdate		date			default sysdate, -- �Է³�¥
	attachment	varchar2(50)	--÷������
)

-- ������ ����
create sequence board_seq

select * from save
order by num desc
