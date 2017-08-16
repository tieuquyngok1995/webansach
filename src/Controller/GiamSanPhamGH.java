package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Funtion;

/**
 * Servlet implementation class GiamSanPhamGH
 */
@WebServlet("/GiamSanPhamGH")
public class GiamSanPhamGH extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GiamSanPhamGH() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String idSp = request.getParameter("getID");

		for (int i = 0; i < Funtion.getGH().size(); i++) {
			if (!Funtion.getGH().get(i).getIdSP().equals(idSp)) {
				if (Funtion.getGH().get(i).getSoLuong() <= 1) {
					Funtion.getGH().remove(i);
				} else {
					Funtion.getGH()
							.get(i)
							.setSoLuong(Funtion.getGH().get(i).getSoLuong() - 1);
				}
			}
		}

		String link = request.getContextPath() + "/giohang.jsp";
		response.sendRedirect(link);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
