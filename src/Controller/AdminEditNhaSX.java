package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.KhoDAO;
import DAO.NhaSXDAO;
import Model.Kho;
import Model.NhaSX;

/**
 * Servlet implementation class AdminEditAccount
 */
@WebServlet("/AdminEditNhaSX")
public class AdminEditNhaSX extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminEditNhaSX() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		toDo(request, response);
	}

	private void toDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf8");
		response.setCharacterEncoding("utf8");
		String maNhaSX = request.getParameter("maNhaSX");
		NhaSX c = NhaSXDAO.lookingforKho(maNhaSX);
		System.out.println(c.getMaNhaSX());
		boolean error = false;
		HttpSession session = request.getSession();

		String tenNhaSX = request.getParameter("tenNhaSX").trim();
		session.setAttribute("tenNhaSX", tenNhaSX);
		String tenNhaSX_err = "";
		if (tenNhaSX == null || tenNhaSX.equals("")) {
			tenNhaSX_err = "Tên nhà sản xuất không được trống";
			error = true;
			session.setAttribute("tenNhaSX_err", tenNhaSX_err);
		} else {
			c.setTenNhaSX(tenNhaSX);;
		}

		String diaChiNhaSX = request.getParameter("diaChiNhaSX");
		session.setAttribute("diaChiNhaSX", diaChiNhaSX);
		String diaChiNhaSX_err = "";
		if (diaChiNhaSX == null || diaChiNhaSX.equals("")) {
			diaChiNhaSX_err = " Địa chỉ nhà sản xuất không được để trống";

			error = true;
			session.setAttribute("diaChiNhaSX_err", diaChiNhaSX_err);

		} else {
			c.setDiaChiNhaSX(diaChiNhaSX);;
			;
		}

		String ngayKHD = request.getParameter("ngayKHD");
		session.setAttribute("ngayKHD", ngayKHD);
		String ngayKHD_err = "";
		if (ngayKHD == null || ngayKHD.equals("")) {
			ngayKHD_err = "Ngày ký hợp đồng không được để trống";
			error = true;
			session.setAttribute("ngayKHD_err", ngayKHD_err);
		} else {
			c.setNgayKHD(ngayKHD);;
			;
		}

		String matHang = request.getParameter("matHang");
		session.setAttribute("matHang", matHang);
		String matHang_err = "";
		if (matHang == null || matHang.equals("")) {
			matHang_err = "Mặt hàng không được để trống";
			error = true;
			session.setAttribute("matHang_err", matHang_err);
		} else {
			c.setMatHang(matHang);
			;
		}
		if (error) {
			System.out.println("error");
			String url = request.getContextPath() + "/Ad_NhaSXEdit.jsp";
			response.sendRedirect(url);
		} else {

			try {
				if ( NhaSXDAO.updateTenNhaSX(c) && NhaSXDAO.updateDiaChiNhaSX(c)					
						&& NhaSXDAO.updateNgayKHD(c)&& NhaSXDAO.updateMatHang(c)	
				) {
					System.out.println("da dung roi");
					String url = request.getContextPath() + "/Ad_NhaSX.jsp";
					session.invalidate();
					response.sendRedirect(url);
				}
			} catch (SQLException e) {

				e.printStackTrace();
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
