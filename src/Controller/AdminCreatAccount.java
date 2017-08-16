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
import Model.Account;

/**
 * Servlet implementation class AdminCreatAccount
 */
@WebServlet("/AdminCreatAccount")
public class AdminCreatAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminCreatAccount() {
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		toDo(request, response);
	}

	private void toDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean error = false;
		AccountDAO accDao = new AccountDAO();
		request.setCharacterEncoding("utf8");
		response.setCharacterEncoding("utf8");
		String gioiTinh = request.getParameter("gioiTinh");
		String email = request.getParameter("email");
		String email_err = "";
		String quyen = request.getParameter("quyen");
		int quyenUser = Integer.parseInt(quyen);
		String quyen_err = "";

		String id = request.getParameter("id");
		String id_err = "";
		if (id == null || id.equals("")) {
			id_err = "Id không được để trống";
			error = true;
			request.setAttribute("id_err", id_err);
		}
		System.out.println("id_err" + error);
		if (email == null || email.equals("")) {
			email_err = "Email K Được Để Trống";
			error = true;
			request.setAttribute("email_error", email_err);

		}
		System.out.println(email_err);
		if (AccountDAO.checkEmail(email) == true) {
			email_err = "Email đã được đăng Ký";
			error = true;
			request.setAttribute("email_error", email_err);
		}
		System.out.println("email_err" + error);
		String pass = request.getParameter("pass");
		String pass_err = "";
		if (pass == null || pass.equals("")) {
			pass_err = "Pass K Được Để Trống";
			error = true;
			request.setAttribute("pass_error", pass_err);
		}
		System.out.println("pass_err" + error);
		String uname = request.getParameter("uname");
		String uname_err = "";
		if (uname == null || uname.equals("")) {
			uname_err = "Họ Tên K Được Để Trống";
			error = true;
			request.setAttribute("uname_error", uname_err);

		}
		System.out.println("uname_err" + error);
		String number = request.getParameter("phone");
		String number_err = "";
		if (number == null || number.equals("") || number.length() >= 11 || number.length() >= 10
				|| number.length() >= 8) {
			number_err = "SĐT K Được Để Trống Và Dài Hơn 8 Số";

			error = true;
			request.setAttribute("number_error", number_err);

		}
		System.out.println("number_err" + error);
		String address = request.getParameter("address");
		String address_err = "";
		if (address == null || address.equals("")) {
			address_err = "Địa Chỉ K Để Trống";
			error = true;
			request.setAttribute("address_error", address_err);

		}
		System.out.println("address_err" + error);
		if (quyen == null || quyen.equals("")) {
			quyen_err = "Không được để trống";
			error = true;
			request.setAttribute("quyen_err", quyen_err);
		}
		System.out.println("quyen_err" + error);
		if (!AccountDAO.checkId(id)) {
			error = true;
			id_err = "Id bị trùng";
			request.setAttribute("id_err", id_err);
		}
		System.out.println("id_err" + error);
		if (AccountDAO.checkEmail(email)) {
			error = true;
			email_err = "Email đã tồn tại";
			request.setAttribute("email_err", email_err);
		}
		System.out.println("AccountDAO.checkEmail(email)" + error);

		if (error) {
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/AD_CreateAccount.jsp");
			rd.forward(request, response);

		} else {
			String url = "/Ad_Account.jsp";
			RequestDispatcher dispather = getServletContext().getRequestDispatcher(url);
			pass = MD5.getMD5(pass);
			Account acc = new Account();

			acc.setAccountID(id);
			acc.setAccountEmail(email);
			acc.setAccountName(uname);
			acc.setAccountPass(pass);
			acc.setAccountSex(gioiTinh);
			acc.setAccountPhone(number);
			acc.setAccountAddress(address);
			acc.setLevel(quyenUser);

			AccountDAO.insertAccocunt(acc);

			dispather.forward(request, response);

		}

	}

}
