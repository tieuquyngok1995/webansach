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
import DAO.TinTucDAO;
import Model.Account;
import Model.Kho;
import Model.TinTuc;

/**
 * Servlet implementation class AdminCreatAccount
 */
@WebServlet("/AdminCreatTinTuc")
public class AdminCreatTinTuc extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminCreatTinTuc() {
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
		TinTucDAO ttDAO = new TinTucDAO();
		request.setCharacterEncoding("utf8");
		response.setCharacterEncoding("utf8");

		String STT = request.getParameter("STT");
		String STT_err = "";
		if (STT == null || STT.equals("")) {
			STT_err = "Mã kho không được để trống";
			error = true;
			request.setAttribute("STT_err", STT_err);
		}
		System.out.println("STT_err" + error);
		
		String tieuDe = request.getParameter("tieuDe");
		String tieuDe_err = "";
		if (tieuDe == null || tieuDe.equals("")) {
			tieuDe_err = "Tên kho không Được Để Trống";
			error = true;
			request.setAttribute("tieuDe_err", tieuDe_err);
		}
		System.out.println("tieuDe_err" +tieuDe_err);
		
		String nDTT = request.getParameter("nDTT");
		String nDTT_err = "";
		if (nDTT == null || nDTT.equals("")) {
			nDTT_err = "Địa chỉ K Được Để Trống";
			error = true;
			request.setAttribute("nDTT_error", nDTT_err);
		}
		System.out.println("nDTT_err" + error);
		
		String nDC = request.getParameter("nDC");
		String nDC_err = "";
		if (nDC == null || nDC.equals("")) {
			nDC_err = "Ngày thuê K Được Để Trống";
			error = true;
			request.setAttribute("nDC_err", nDC_err);

		}
		System.out.println("nDC_err" + nDC_err);
		
		String ngayDang = request.getParameter("ngayDang");
		String ngayDang_err = "";
		if (ngayDang == null || ngayDang.equals("")) {
			ngayDang_err = "Phí thuê K Được Để Trống";
			error = true;
			request.setAttribute("ngayDang_err", ngayDang_err);

		}
		System.out.println("ngayDang_err" + ngayDang_err);

		if (error) {
			RequestDispatcher rd = getServletContext().getRequestDispatcher(
					"/AD_CreateTinTuc.jsp");
			rd.forward(request, response);
		} else {
			String url = "/Ad_TinTuc.jsp";
			RequestDispatcher dispather = getServletContext()
					.getRequestDispatcher(url);
			HttpSession sessionAdCreat = request.getSession();
			TinTuc tt = new TinTuc();
			tt.setSTT(STT);;
			tt.setTieuDe(tieuDe);;
			tt.setnDTT(nDTT);;
			tt.setnDC(nDC);;
			tt.setNgayDang(ngayDang);;
			TinTucDAO.insertTinTuc(tt);

			dispather.forward(request, response);

		}

	}

}
