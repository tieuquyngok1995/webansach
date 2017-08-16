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
import DAO.SuKienDAO;
import DAO.TinTucDAO;
import Model.Kho;
import Model.SuKien;
import Model.TinTuc;

/**
 * Servlet implementation class AdminEditAccount
 */
@WebServlet("/AdminEditSuKien")
public class AdminEditTinTuc extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminEditTinTuc() {
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
		String STT = request.getParameter("STT");
		SuKien c = SuKienDAO.lookingforSuKien(STT);
		System.out.println(c.getSTT());
		boolean error = false;
		HttpSession session = request.getSession();

		String tieuDe = request.getParameter("tieuDe").trim();
		session.setAttribute("tieuDe", tieuDe);
		String tieuDe_err = "";
		if (tieuDe == null || tieuDe.equals("")) {
			tieuDe_err = "Tên tiêu đề không được trống";
			error = true;
			session.setAttribute("tieuDe_err", tieuDe_err);
		} else {
			c.setTieuDe(tieuDe);
		}

		String nDTT = request.getParameter("nDTT");
		session.setAttribute("nDTT", nDTT);
		String nDTT_err = "";
		if (nDTT == null || nDTT.equals("")) {
			nDTT_err = " Nội dung tiêu đề không được để trống";

			error = true;
			session.setAttribute("nDTT_err", nDTT_err);

		} else {
			c.setnDTT(nDTT);
		}

		String nDC = request.getParameter("nDC");
		session.setAttribute("nDC", nDC);
		String nDC_err = "";
		if (nDC == null || nDC.equals("")) {
			nDC_err = "Nội dung chính không được để trống";
			error = true;
			session.setAttribute("nDC_err", nDC_err);
		} else {
			c.setnDC(nDC);;
			;
		}

		String ngayDang = request.getParameter("ngayDang");
		session.setAttribute("ngayDang", ngayDang);
		String ngayDang_err = "";
		if (ngayDang == null || ngayDang.equals("")) {
			ngayDang_err = "Ngày đăng không được để trống";
			error = true;
			session.setAttribute("ngayDang_err",ngayDang_err);
		} else {
			c.setNgayDang(ngayDang);;
			;
		}
		if (error) {
			System.out.println("error");
			String url = request.getContextPath() + "/Ad_SuKienEdit.jsp";
			response.sendRedirect(url);
		} else {

			try {
				if (SuKienDAO.updateTieuDe(c)&&SuKienDAO.updatenDTT(c)
							&&SuKienDAO.updatenDC(c)&&SuKienDAO.updateNgayDang(c)	
				) {
					System.out.println("da dung roi");
					String url = request.getContextPath() + "/Ad_SuKien.jsp";
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
