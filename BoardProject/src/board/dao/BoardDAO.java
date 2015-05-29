package board.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import board.dto.*;

public class BoardDAO {
	private Connection con;
	private PreparedStatement pstmt;
	
	public BoardDAO() {
		try {
			//1. JDBC ����̹� �ε�  
			Class.forName("oracle.jdbc.driver.OracleDriver");  
	 	  
			//2. ������ ���̽��� ����  
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "jspuserc", "jsp1234");
		} catch(ClassNotFoundException e) {
			e.printStackTrace();
		} catch(SQLException e) {
			e.printStackTrace();
		} finally { //fianlly ���ܰ� �߻��ϴ��� ������ ������ �����Ŵ
			
		}
	}
	//�۾���
	public int insertBoard(Board board) {
		//3. SQL�� ����
		String sql = "insert into board values(board_seq.nextval, ?, ?, ?, default, default, 'file')";
		 
	 	try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, board.getName());
			pstmt.setString(2, board.getTitle());
			pstmt.setString(3, board.getContent());
			
			pstmt.executeUpdate();
			
			int result = pstmt.executeUpdate();
			
			return result;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
	 
		return 0;
	}
	//����Ʈ
	public List<Board> selectAllBoards() {
		String sql = "select * from board order by num desc";
		
		List<Board> list = new ArrayList<Board>();
		
		try {
			pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Board board = new Board();
				
				board.setNum(rs.getInt("num"));
				board.setName(rs.getString("name"));
				board.setTitle(rs.getString("title"));
				board.setWdate(rs.getDate("wdate"));
				board.setHits(rs.getInt("hits"));
				
				list.add(board);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	//�Խ��� �󼼺���
	public Board seletOnBoardByNum(int num) {
		return null;
	}
	///�Խ��� �󼼺���� ��ȸ�� ����
	public void updateHits(int num) {
		
	}
	//�Խ��� �Խñ� ��ȣ�� ��ġ�ϴ� �� �����ϱ�
	public int updateBoard(Board board) {
		return 0;
	}
	public int deleteBoard(int num) {
		return num;
	}
}
