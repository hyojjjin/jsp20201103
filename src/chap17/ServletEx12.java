package chap17;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletEx12
 */
@WebServlet("/ServletEx12")
public class ServletEx12 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEx12() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Override
    public void init() throws ServletException {
    	ServletContext application = getSetvletContext();
    	List<String> list = new ArrayList<>();
    	list.add("java");
    	list.add("html");
    	list.add("css");
    	list.add("servlet");
    	list.add("tomcat");
    	application.setAttribute("database", list);
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	String id = request.getParameter("id");
	if (id == null) {
		id = "0";
	}
	int idx = Integer.valueOf(id);
	
	// db 조회
	ServletContext application = getSetvletContext();
	List<String> list
		= (List<String>) application.getAttribute("database");
	String name = list.get(idx);
	
	//forward
	RequestDispatcher
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
