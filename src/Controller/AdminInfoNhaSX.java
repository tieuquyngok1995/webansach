package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AdminInfoAccount
 */
@WebServlet("/AdminInfoNhaSX")
public class AdminInfoNhaSX extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminInfoNhaSX() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String Id = request.getParameter("maNhaSX");
		HttpSession session = request.getSession();
		session.setAttribute("getmaNhaSX", Id);
		String url = request.getContextPath() + "/Ad_NhaSXEdit.jsp";
		response.sendRedirect(url);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String Id = request.getParameter("maNhaSX");
		HttpSession session = request.getSession();
		session.setAttribute("getmaNhaSX", Id);
		String url = request.getContextPath() + "/Ad_NhaSXEdit.jsp";
		response.sendRedirect(url);
	}

}
