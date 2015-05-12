create user jspuserc identified by jsp1234;

-- SQL
-- 1) ������ ���� ���(DDL) : create(����), alter(�߰�, ��Ű���߰�), drop(��ü����)
-- 2) ������ ���� ���(DML) : insert(���߰�), update(�����ͼ���), delete(�� ����), select(�˻�)
-- 3) ������ ���� ���(DCL) : grant(�����ֱ�), revoke(���ѻ���)

-- ���̺� ����
create table member
(
	id			varchar2(15)	primary key,
	password	varchar2(10),
	name		varchar2(20),
	age			number,
	gender		char(6),
	addr		varchar2(100),
	regdate		date			default sysdate -- ���Գ�¥
)

select * from member

insert into member
values('test1', '1234', 'ȫ�浿', 20, '1', '�����', '2015-04-17')

drop table member

update member
set addr = '��⵵'
where id = 'test'

delete member
where id = 'test1'
