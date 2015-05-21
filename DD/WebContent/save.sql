create user jspuserc identified by 1234;

-- SQL
-- 1) ������ ���� ���(DDL) : create(����), alter(�߰�, ��Ű���߰�), drop(��ü����)
-- 2) ������ ���� ���(DML) : insert(���߰�), update(�����ͼ���), delete(�� ����), select(�˻�)
-- 3) ������ ���� ���(DCL) : grant(�����ֱ�), revoke(���ѻ���)

-- ���̺� ����
create table save
(
	name		varchar2(20)	primary key,
	picture		varchar2(10),
	text		varchar2(100),
	coment		varchar2(200),
	regdate		date			default sysdate -- �Է³�¥
)

select * from save