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
@WebServlet("/AdminInfoDonHang")
public class AdminInfoDonHang extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminInfoDonHang() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("maDH");
		HttpSession session = request.getSession();
		session.setAttribute("getMaDH", id);
		String url = request.getContextPath() + "/Ad_DonHangEdit.jsp";
		response.sendRedirect(url);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("maDH");
		HttpSession session = request.getSession();
		session.setAttribute("getMaDH", id);
		String url = request.getContextPath() + "/Ad_DonHangEdit.jsp";
		response.sendRedirect(url);
	}

}
