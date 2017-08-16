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
import Model.Account;
import Model.Kho;

/**
 * Servlet implementation class AdminCreatAccount
 */
@WebServlet("/AdminCreatKho")
public class AdminCreatKho extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminCreatKho() {
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
		KhoDAO khoDao = new KhoDAO();
		request.setCharacterEncoding("utf8");
		response.setCharacterEncoding("utf8");

		String maKho = request.getParameter("maKho");
		String maKho_err = "";
		if (maKho == null || maKho.equals("")) {
			maKho_err = "Mã kho không được để trống";
			error = true;
			request.setAttribute("maKho_err", maKho_err);
		}
		System.out.println("maKho_err" + error);
		
		String tenKho = request.getParameter("tenKho");
		String tenKho_err = "";
		if (tenKho == null || tenKho.equals("")) {
			tenKho_err = "Tên kho không Được Để Trống";
			error = true;
			request.setAttribute("tenKho_err", tenKho_err);
		}
		System.out.println("tenKho_err" +tenKho_err);
		
		String diaChi = request.getParameter("diaChi");
		String diaChi_err = "";
		if (diaChi == null || diaChi.equals("")) {
			diaChi_err = "Địa chỉ K Được Để Trống";
			error = true;
			request.setAttribute("diaChi_error", diaChi_err);
		}
		System.out.println("pass_err" + error);
		
		String ngayThue = request.getParameter("ngayThue");
		String ngayThue_err = "";
		if (ngayThue == null || ngayThue.equals("")) {
			ngayThue_err = "Ngày thuê K Được Để Trống";
			error = true;
			request.setAttribute("ngayThue_err", ngayThue_err);

		}
		System.out.println("ngayThue_err" + ngayThue_err);
		
		String phiThue = request.getParameter("phiThue");
		String phiThue_err = "";
		if (phiThue == null || phiThue.equals("")) {
			phiThue_err = "Phí thuê K Được Để Trống";
			error = true;
			request.setAttribute("phiThue_err", phiThue_err);

		}
		System.out.println("phiThue_err" + phiThue_err);

		if (error) {
			RequestDispatcher rd = getServletContext().getRequestDispatcher(
					"/AD_CreateKho.jsp");
			rd.forward(request, response);
		} else {
			String url = "/Ad_Kho.jsp";
			RequestDispatcher dispather = getServletContext()
					.getRequestDispatcher(url);
			Account acc = new Account();
			HttpSession sessionAdCreat = request.getSession();
			Kho kho = new Kho();
			kho.setMakho(maKho);
			kho.setTenkho(tenKho);
			kho.setDiachi(diaChi);
			kho.setNgaythue(ngayThue);
			kho.setPhithue(phiThue);
			KhoDAO.insertKho(kho);

			dispather.forward(request, response);

		}

	}

}
