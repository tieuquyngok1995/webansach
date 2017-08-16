package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.Funtion;
import Model.SanPham;

/**
 * Servlet implementation class ThemVaoGH
 */
@WebServlet("/ThemVaoGH")
public class ThemVaoGH extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ThemVaoGH() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		/*
		 * lay idsp thu the input co type=hidden gui id qa trang gio hang trang
		 * gio hang hien thi sp do tham khoa hoatuoi123.com.vn
		 */

		HttpSession session = request.getSession();

		String idSP = request.getParameter("idSP");
		String sl = request.getParameter("soLuong");
		int soLuong = Integer.parseInt(sl);
		SanPham sanPham = DAO.ProductDAO.lookingSP(idSP);
		sanPham.setSoLuong(soLuong);
		Funtion.themGH(sanPham);

		String link = request.getContextPath() + "/giohang.jsp";
		response.sendRedirect(link);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

	}

}
