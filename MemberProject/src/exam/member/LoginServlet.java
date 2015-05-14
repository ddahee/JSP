package exam.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//0. 요청 처리
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
								
				String id = request.getParameter("id");
				String pw = request.getParameter("pw");
				
				//out.print(id);

				//1. JDBC 드라이버 로드
				try {
					Class.forName("oracle.jdbc.driver.OracleDriver");
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				}
								
				//2. 데이터 베이스와 연결
				Connection con = null;
				try {
					con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "jspuserc", "1234");
				} catch (SQLException e) {
					e.printStackTrace();
				}
				
				if(id.equals(id) && pw.equals(pw)) {
					response.sendRedirect("main.jsp");
				}
				else {
					response.sendRedirect("main.jsp");
				}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
