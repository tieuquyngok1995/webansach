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
import Model.Kho;

/**
 * Servlet implementation class AdminEditAccount
 */
@WebServlet("/AdminEditKho")
public class AdminEditKho extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminEditKho() {
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
		String maKho = request.getParameter("maKho");
		Kho c = KhoDAO.lookingforKho(maKho);
		System.out.println(c.getMakho());
		boolean error = false;
		HttpSession session = request.getSession();

		String tenKho = request.getParameter("tenKho").trim();
		session.setAttribute("tenKho", tenKho);
		String tenKho_err = "";
		if (tenKho == null || tenKho.equals("")) {
			tenKho_err = "Tên kho không được trống";
			error = true;
			session.setAttribute("tenKho_err", tenKho_err);
		} else {
			c.setTenkho(tenKho);
		}

		String diaChi = request.getParameter("diaChi");
		session.setAttribute("diaChi", diaChi);
		String diaChi_err = "";
		if (diaChi == null || diaChi.equals("")) {
			diaChi_err = " Địa chỉ không được để trống";

			error = true;
			session.setAttribute("diaChi_err", diaChi_err);

		} else {
			c.setDiachi(diaChi);
			;
		}

		String ngayThue = request.getParameter("ngayThue");
		session.setAttribute("ngayThue", ngayThue);
		String ngayThue_err = "";
		if (ngayThue == null || ngayThue.equals("")) {
			ngayThue_err = "Ngày thuê không được để trống";
			error = true;
			session.setAttribute("ngayThue_err", ngayThue_err);
		} else {
			c.setNgaythue(ngayThue);
			;
		}

		String phiThue = request.getParameter("phiThue");
		session.setAttribute("phiThue", phiThue);
		String phiThue_err = "";
		if (phiThue == null || phiThue.equals("")) {
			phiThue_err = "Phí thuê không được để trống";
			error = true;
			session.setAttribute("phiThue_err", phiThue_err);
		} else {
			c.setPhithue(phiThue);
			;
		}
		if (error) {
			System.out.println("error");
			String url = request.getContextPath() + "/Ad_KhoEdit.jsp";
			response.sendRedirect(url);
		} else {

			try {
				if (KhoDAO.updateKhoName(c) && KhoDAO.updateKhodiaChi(c) && KhoDAO.updateKhongayThue(c)
						&& KhoDAO.updateKhophiThue(c)

				) {
					System.out.println("da dung roi");
					String url = request.getContextPath() + "/Ad_Kho.jsp";
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
