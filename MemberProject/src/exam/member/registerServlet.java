package exam.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class registerServlet
 */
@WebServlet("/register")
public class registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//0. ��û ó��
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
						
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String gender = request.getParameter("gender");
		String addr = request.getParameter("addr");
		//out.print(id);

		//1. JDBC ����̹� �ε�
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
						
		//2. ������ ���̽��� ����
		Connection con = null;
		try {
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "jspuserc", "1234");
		} catch (SQLException e) {
			e.printStackTrace();
		}
						
		/*//3. SQL�� ����
		//1) statement ��ü �̿�
		String sql = "insert into member values('" + id + "', '" + pw + "', '" + name +"', 20, '1', '�����', '2015-04-17')";
		Statement stmt = con.createStatement();
		int result = stmt.executeUpdate(sql); //sql����, alt+x
						
		out.print(result);*/ 
						
		//2) PreparedStatement ��ü �̿�
		PreparedStatement pstmt = null;
		String sql = "insert into member values(?, ?, ?, ?, ?, ?, default)";
		try {
			pstmt = con.prepareStatement(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
						
		//���ε�
		try {
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			pstmt.setInt(4, Integer.parseInt(age));
			pstmt.setString(5, gender);
			pstmt.setString(6, addr);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
						
		int result;
		try {
			result = pstmt.executeUpdate();
							
			if(result == 1) 			
				out.print(result);
				response.sendRedirect("register.jsp");
							
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			response.sendRedirect("list.jsp");
		}
						
		//4. �����ͺ��̽��� ���� ����
		//stmt.close();
		try {
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}				
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
