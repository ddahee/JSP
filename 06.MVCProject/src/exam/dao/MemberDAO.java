package exam.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import exam.dto.Member;

public class MemberDAO {

	
	//������
	public MemberDAO() {
		System.out.println("������");
		
		//1. JDBC ����̹� �ε�
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
		//2. ������ ���̽��� ����
		Connection con = null;
		try {
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "jspuserc", "jsp1234");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//ȸ������
	public void insertMember(Member member) {
		System.out.println("ȸ������");
		String sql = "insert into member values(?, ?, ?, ?, ?, ?, default)";
	}
	
	//ȸ������
	public void deleteMember() {
		System.out.println("ȸ������");
	}
}
