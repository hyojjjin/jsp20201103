package chap17.sample3;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap05.Post;

/**
 * Servlet implementation class RemoveServlet2
 */
@WebServlet("/RemoveServlet2")
public class RemoveServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RemoveServlet2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
	
		remove(id);
		
		
		response.sendRedirect(request.getContextPath()+"/sample3/post/main");
	}

	private void remove(String id) {
		Post post = new Post();

		String sql = "DELETE FROM post WHERE id=?";
		
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		// jdbc:oracle:thin:@mydb501_high?TNS_ADMIN=C:\\Users\\mydb00\\Documents\\Wallet_mydb501
//		String url = "jdbc:oracle:thin:@mydb501_high?TNS_ADMIN=C:\\Users\\admin\\Documents\\Wallet_mydb501";
		String user = "c##mydbms"; // mydb00
		String password = "admin"; // adminAdmin12

		
		try (
				Connection con = DBUtile.get.con
				PreparedStatement pstmt = con.prepareStatement(sql);
		) {
			pstmt.setInt(1, Integer.parseInt(id));
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
