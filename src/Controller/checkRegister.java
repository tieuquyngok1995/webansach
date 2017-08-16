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

import DAO.AccountDAO;
import DAO.FuntionLT;
import Model.Account;
import service.MD5;

/**
 * Servlet implementation class checkRegister
 */
@WebServlet("/checkRegister")
public class checkRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public checkRegister() {
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

	public void toDo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		boolean error = false;
		AccountDAO accDao = new AccountDAO();
		request.setCharacterEncoding("utf8");
		response.setCharacterEncoding("utf8");
		String gioiTinh = request.getParameter("gioiTinh");
		String email = request.getParameter("email");
		String email_err = "";
		if (email == null || email.equals("")) {
			email_err = "Email K Được Để Trống";
			error = true;
			request.setAttribute("email_error", email_err);

		}
		if (AccountDAO.checkEmail(email) == true) {
			email_err = "Email đã được đăng Ký";
			error = true;
			request.setAttribute("email_error", email_err);
		}
		String pass = request.getParameter("pass");
		String re_pass = request.getParameter("repass");
		String re_pass_err = "";
		String pass_err = "";
		if (pass == null || pass.equals("")) {
			pass_err = "Pass K Được Để Trống";
			error = true;
			request.setAttribute("pass_error", pass_err);
		}

		if (re_pass == null || re_pass.equals("") || !re_pass.equals(pass)) {
			re_pass_err = "K Để Trống Và Phải Giống Password";
			error = true;
			request.setAttribute("re_pass_error", re_pass_err);
		}

		String uname = request.getParameter("uname");
		String uname_err = "";
		if (uname == null || uname.equals("")) {
			uname_err = "Họ Tên K Được Để Trống";
			error = true;
			request.setAttribute("uname_error", uname_err);

		}

		String number = request.getParameter("number");
		String number_err = "";
		if (number == null || number.equals("") || number.length() >= 11
				|| number.length() >= 10 || number.length() >= 8) {
			number_err = "SĐT K Được Để Trống Và Dài Hơn 8 Số";

			error = true;
			request.setAttribute("number_error", number_err);

		}

		String address = request.getParameter("address");
		String address_err = "";
		if (address == null || address.equals("")) {
			address_err = "Địa Chỉ K Để Trống";
			error = true;
			request.setAttribute("address_error", address_err);

		}

		if (error) {
			RequestDispatcher rd = getServletContext().getRequestDispatcher(
					"/register.jsp");
			rd.forward(request, response);
		} else {
			String url = "/index.jsp";
			RequestDispatcher dispather = getServletContext()
					.getRequestDispatcher(url);
			pass = MD5.getMD5(pass);
			Account acc = new Account();
			HttpSession sessionRegister = request.getSession();
			Date d = new Date();
			String id = "" + d.getTime();
			acc.setAccountID(id);
			acc.setAccountEmail(email);
			acc.setAccountName(uname);
			acc.setAccountPass(pass);
			acc.setAccountSex(gioiTinh);
			acc.setAccountPhone(number);
			acc.setAccountAddress(address);
			acc.setLevel(3);
			AccountDAO.insertAccocunt(acc);

			sessionRegister.setAttribute("email", email);
			sessionRegister.setAttribute("uname", uname);
			
			FuntionLT.login = true;
			FuntionLT.emailUser = email;
			
			dispather.forward(request, response);

		}
	}
}
