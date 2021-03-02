package chap17.sample3;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap05.Post;

/**
 * Servlet implementation class DetailServlet
 */
@WebServlet(name = "DetailServlet2",
	urlPatterns = { "/sample3/post/detail" })
public class DetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		// db에서 원하는 포스트를 얻어와
		
		Post post = getPost(id);
		
		String path = "/WEB-INF/view/chap17/detail.jsp";
		request.setAttribute("post", post);
		request.getRequestDispatcher(path).forward(request, response);
	}
	
	private Post getPost(String id) {
		
		Post post = new Post();

		// post 테이블에서 id, title을 id의 내림차순
		String sql = "SELECT title, body FROM post"
					+ " WHERE id = " + id;

		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		// jdbc:oracle:thin:@mydb501_high?TNS_ADMIN=C:\\Users\\mydb00\\Documents\\Wallet_mydb501
//		String url = "jdbc:oracle:thin:@mydb501_high?TNS_ADMIN=C:\\Users\\admin\\Documents\\Wallet_mydb501";
		String user = "c##mydbms"; // mydb00
		String password = "admin"; // adminAdmin12

		try {
			// 1.드라이버로딩
		//	Class.forName("oracle.jdbc.driver.OracleDriver");
			// 2.연결생성
			Connection con = DriverManager.getConnection(url, user, password);
			// 3.statement생성
			Statement stmt = con.createStatement();
			// 4.쿼리 실행
			ResultSet rs = stmt.executeQuery(sql);
			// 5.결과 처리
			// SELECT id, title FROM post
			while (rs.next()) {
				//String title = rs.getString(1);
				//String body = rs.getString(2);
				post.setId(Integer.parseInt(id));
				post.setTitle(rs.getString(1));
				post.setBody(rs.getString(2));
			}
			
			// 6. statement, 연결 닫기
			stmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return post;
	}

	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
