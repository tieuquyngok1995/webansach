package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AdminInfoProduct
 */
@WebServlet("/AdminInfoProduct")
public class AdminInfoProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminInfoProduct() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String idSP = request.getParameter("idSP");
		HttpSession session = request.getSession();
		session.setAttribute("getIdSP", idSP);
		String url = request.getContextPath() + "/Ad_ProductEdit.jsp";
		response.sendRedirect(url);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String idSP = request.getParameter("idSP");
		HttpSession session = request.getSession();
		session.setAttribute("getIdSP", idSP);
		String url = request.getContextPath() + "/Ad_ProductEdit.jsp";
		response.sendRedirect(url);
	}

}
