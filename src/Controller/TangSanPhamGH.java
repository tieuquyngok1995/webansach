package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ProductDAO;
import Model.Funtion;
import Model.SanPham;

/**
 * Servlet implementation class TangSanPhamGH
 */
@WebServlet("/TangSanPhamGH")
public class TangSanPhamGH extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TangSanPhamGH() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String idSp = request.getParameter("idSP");

		for (int i = 0; i < Funtion.getGH().size(); i++) {
			if (!Funtion.getGH().get(i).getIdSP().equals(idSp)) {
				Funtion.getGH().get(i)
						.setSoLuong(Funtion.getGH().get(i).getSoLuong() + 1);

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
