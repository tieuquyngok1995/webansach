package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.DonHangDAO;
import DAO.KhoDAO;
import DAO.SuKienDAO;
import DAO.TinTucDAO;

/**
 * Servlet implementation class AdminDeleteAccount
 */
@WebServlet("/AdminDeleteDonHang")
public class AdminDeleteDonHang extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminDeleteDonHang() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		toDo(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		toDo(request, response);
	}

	private void toDo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			request.setCharacterEncoding("utf8");
			response.setCharacterEncoding("utf8");
			String maDH = request.getParameter("maDH");

			DonHangDAO.deleteDonHang(maDH);
			String url = request.getContextPath() + "/Ad_DonHang.jsp";
			response.sendRedirect(url);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
