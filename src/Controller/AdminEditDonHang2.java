package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.DonHangDAO;
import DAO.DonHangDAO2;
import DAO.KhoDAO;
import DAO.TinTucDAO;
import Model.DonHang;
import Model.DonHang2;
import Model.Kho;
import Model.TinTuc;

/**
 * Servlet implementation class AdminEditAccount
 */
@WebServlet("/AdminEditDonHang2")
public class AdminEditDonHang2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminEditDonHang2() {
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
		String maDH = request.getParameter("maDH");
		DonHang2 c = DonHangDAO2.lookingforDonHang(maDH);
		System.out.println(c.getMaDH());
		boolean error = false;
		HttpSession session = request.getSession();

		String tenTK = request.getParameter("tenTK").trim();
		session.setAttribute("tenTK", tenTK);
		String tenTK_err = "";
		if (tenTK == null || tenTK.equals("")) {
			tenTK_err = "Tên đơn hàng không được trống";
			error = true;
			session.setAttribute("tenTK_err", tenTK_err);
		} else {
			c.setTenTK(tenTK);;
		}

		String sanPham = request.getParameter("sanPham");
		session.setAttribute("sanPham", sanPham);
		String sanPham_err = "";
		if (sanPham == null || sanPham.equals("")) {
			sanPham_err = " Sản phẩm không được để trống";

			error = true;
			session.setAttribute("sanPham_err", sanPham_err);

		} else {
			c.setSanPham(sanPham);
		}

		String soLuong = request.getParameter("soLuong");
		session.setAttribute("soLuong", soLuong);
		String soLuong_err = "";
		if (soLuong == null || soLuong.equals("")) {
			soLuong_err = "Số lượng không được để trống";
			error = true;
			session.setAttribute("soLuong_err", soLuong_err);
		} else {
			c.setSoLuong(soLuong);;
			;
		}

		String donGia = request.getParameter("donGia");
		session.setAttribute("donGia", donGia);
		String donGia_err = "";
		if (donGia == null || donGia.equals("")) {
			donGia_err = "Đơn giá không được để trống";
			error = true;
			session.setAttribute("donGia_err",donGia_err);
		} else {
			c.setDonGia(donGia);;
			;
		}
		
		String ngayMua = request.getParameter("ngayMua");
		session.setAttribute("ngayMua", ngayMua);
		String ngayMua_err = "";
		if (ngayMua == null || ngayMua.equals("")) {
			ngayMua_err = "Ngày mua không được để trống";
			error = true;
			session.setAttribute("ngayMua_err",ngayMua_err);
		} else {
			c.setNgayMua(ngayMua);;
			;
		}
		if (error) {
			System.out.println("error");
			String url = request.getContextPath() + "/Ad_DonHangTTEdit.jsp";
			response.sendRedirect(url);
		} else {

			try {
				if (DonHangDAO2.updateTenTK(c)&&DonHangDAO2.updateSanPham(c)&&DonHangDAO2.updateSoLuong(c)
						&&DonHangDAO2.updateDonGia(c) && 	DonHangDAO2.updateNgayMua(c)
				) {
					System.out.println("da dung roi");
					String url = request.getContextPath() + "/Ad_DonHangTT.jsp";
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
