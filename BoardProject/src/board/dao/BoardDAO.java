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
			//1. JDBC 드라이버 로드  
			Class.forName("oracle.jdbc.driver.OracleDriver");  
	 	  
			//2. 데이터 베이스와 연결  
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "jspuserc", "jsp1234");
		} catch(ClassNotFoundException e) {
			e.printStackTrace();
		} catch(SQLException e) {
			e.printStackTrace();
		} finally { //fianlly 예외가 발생하던지 말던지 무조건 실행시킴
			
		}
	}
	//글쓰기
	public int insertBoard(Board board) {
		//3. SQL문 실행
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
	//리스트
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
	//게시판 상세보기
	public Board seletOnBoardByNum(int num) {
		return null;
	}
	///게시판 상세보기시 조회수 증가
	public void updateHits(int num) {
		
	}
	//게시판 게시글 번호와 일치하는 글 수정하기
	public int updateBoard(Board board) {
		return 0;
	}
	public int deleteBoard(int num) {
		return num;
	}
}
