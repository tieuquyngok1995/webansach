package Controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.MD5;
import DAO.AccountDAO;
import DAO.KhoDAO;
import DAO.NhaSXDAO;
import Model.Account;
import Model.Kho;
import Model.NhaSX;

/**
 * Servlet implementation class AdminCreatAccount
 */
@WebServlet("/AdminCreatNhaSX")
public class AdminCreatNhaSX extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminCreatNhaSX() {
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
		boolean error = false;
		NhaSXDAO nhasx = new NhaSXDAO();
		request.setCharacterEncoding("utf8");
		response.setCharacterEncoding("utf8");

		String maNhaSX = request.getParameter("maNhaSX");
		String maNhaSX_err = "";
		if (maNhaSX == null || maNhaSX.equals("")) {
			maNhaSX_err = "Mã nha SX không được để trống";
			error = true;
			request.setAttribute("maNhaSX_err", maNhaSX_err);
		}
		System.out.println("maNhaSX_err" + error);
		
		String tenNhaSX = request.getParameter("tenNhaSX");
		String tenNhaSX_err = "";
		if (tenNhaSX == null || tenNhaSX.equals("")) {
			tenNhaSX_err = "Tên nha SX không Được Để Trống";
			error = true;
			request.setAttribute("tenNhaSX_err", tenNhaSX_err);
		}
		System.out.println("tenNhaSX_err" +tenNhaSX_err);
		
		String diaChiNhaSX = request.getParameter("diaChiNhaSX");
		String diaChiNhaSX_err = "";
		if (diaChiNhaSX == null || diaChiNhaSX.equals("")) {
			diaChiNhaSX_err = "Địa chỉ nha SX k Được Để Trống";
			error = true;
			request.setAttribute("diaChiNhaSX_error", diaChiNhaSX_err);
		}
		System.out.println("diaChiNhaSX" + error);
		
		String ngayKHD = request.getParameter("ngayKHD");
		String ngayKHD_err = "";
		if (ngayKHD == null || ngayKHD.equals("")) {
			ngayKHD_err = "Ngày ki hop dong K Được Để Trống";
			error = true;
			request.setAttribute("ngayKHD_err", ngayKHD_err);

		}
		System.out.println("ngayKHD_err" + ngayKHD_err);
		
		String matHang = request.getParameter("matHang");
		String matHang_err = "";
		if (matHang == null || matHang.equals("")) {
			matHang_err = "<Mat hang K Được Để Trống";
			error = true;
			request.setAttribute("matHang_err", matHang_err);

		}
		System.out.println("matHang_err" + matHang_err);

		if (error) {
			RequestDispatcher rd = getServletContext().getRequestDispatcher(
					"/AD_CreateNhaSX.jsp");
			rd.forward(request, response);
		} else {
			String url = "/Ad_NhaSX.jsp";
			RequestDispatcher dispather = getServletContext()
					.getRequestDispatcher(url);
			HttpSession sessionAdCreat = request.getSession();
			NhaSX nhaSX = new NhaSX();
			nhaSX.setMaNhaSX(maNhaSX);;
			nhaSX.setTenNhaSX(tenNhaSX);;
			nhaSX.setDiaChiNhaSX(diaChiNhaSX);;
			nhaSX.setNgayKHD(ngayKHD);;
			nhaSX.setMatHang(matHang);;
			NhaSXDAO.insertNhaSX(nhaSX);

			dispather.forward(request, response);

		}

	}

}
