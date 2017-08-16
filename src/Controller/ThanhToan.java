package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.Funtion;
import service.SendMail;

/**
 * Servlet implementation class ThanhToan
 */
@WebServlet("/ThanhToan")
public class ThanhToan extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ThanhToan() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		if (session.getAttribute("email") == null) {
			String link = request.getContextPath() + "/login.jsp";
			response.sendRedirect(link);
		} else {
			/*
			 * for (SanPham sp : Function.getGH()) {
			 * Function.addTksp(sp.getIdLoaiSP(), sp.getSoLuong()); }
			 */
			// String sl = request.getParameter("soLuong");
			// int slcl = Integer.parseInt(sl);
			Funtion.deleteAllGH();
			;
			// String to = (String) request.getParameter("email");
			// String subject = "Xác Nhận Thanh Toán";
			// String text = "abc";
			// if (SendMail.sendMail(to, subject.trim(), text) == true) {
			// System.out.println("Thành Công");
			// } else {
			// System.out.println("Thất Bại");
			// }

			String link = request.getContextPath() + "/index.jsp";
			response.sendRedirect(link);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
