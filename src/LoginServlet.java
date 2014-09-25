
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		HttpSession session = request.getSession(true);
		boolean userValid = false;
		if (uname.contains("MCA")) {			
			userValid = true;
			if (userValid) {
				session.setAttribute("uname", uname);
				response.sendRedirect("studhome.jsp");
			} else {
				response.sendRedirect("index.html#invalid");
			}

		}
		else if(uname.contains("FAC"))
		{
			/*
			 *  Code to check uname and pass in database 
			 */
			userValid=true;
			if(userValid)
			{
				session.setAttribute("uname",uname);
				response.sendRedirect("fachome.jsp");
			}
			else
			{
				response.sendRedirect("index.html#invlaid");
			}
		}
	}

}
