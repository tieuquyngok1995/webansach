package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.KhoDAO;
import DAO.SuKienDAO;
import DAO.TinTucDAO;

/**
 * Servlet implementation class AdminDeleteAccount
 */
@WebServlet("/AdminDeleteSuKien")
public class AdminDeleteSuKien extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminDeleteSuKien() {
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
			String STT = request.getParameter("STT");

			SuKienDAO.deleteSuKien(STT);
			String url = request.getContextPath() + "/Ad_SuKien.jsp";
			response.sendRedirect(url);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
