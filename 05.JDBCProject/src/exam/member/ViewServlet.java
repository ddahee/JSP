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
 * Servlet implementation class ViewServlet
 */
@WebServlet("/view")
public class ViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		
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
	
		//3. SQL�� ����
		PreparedStatement pstmt = null;
		String sql = "select * from member where id=?";
		
		try { 
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, id); //���ε�
			
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				out.print("<table border=1>");
				
				out.print("<tr>");
				out.print("<td>���̵�</td>");
				out.print("<td>" + rs.getString("id") + "</td>");
				out.print("</tr>");
				
				out.print("<tr>");
				out.print("<td>�̸�</td>");
				out.print("<td>" + rs.getString("name") + "</td>");
				out.print("</tr>");
				
				out.print("<tr>");
				out.print("<td>����</td>");
				out.print("<td>" + rs.getString("age") + "</td>");
				out.print("</tr>");
				
				out.print("<tr>");
				out.print("<td>����</td>");
				out.print("<td>" + rs.getString("gender") + "</td>");
				out.print("</tr>");
				
				out.print("<tr>");
				out.print("<td>�ּ�</td>");
				out.print("<td>" + rs.getString("addr") + "</td>");
				out.print("</tr>");
				
				out.print("</table>");
				
				out.print("<a href='delete.jsp?id=" + rs.getString("id") + "'>����</a>");
			}
			
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
