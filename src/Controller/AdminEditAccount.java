package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.AccountDAO;
import Model.Account;

/**
 * Servlet implementation class AdminEditAccount
 */
@WebServlet("/AdminEditAccount")
public class AdminEditAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminEditAccount() {
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

	private void toDo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf8");
		response.setCharacterEncoding("utf8");
		String Id = request.getParameter("id");
		Account c = AccountDAO.lookingforUser(Id);
		System.out.println(c.getAccountID());
		boolean error = false;
		HttpSession session = request.getSession();
		String name = request.getParameter("name");
		session.setAttribute("name", name);
		String uname_err = "";
		if (name == null || name.equals(" ")) {
			uname_err = "Username không được trống";
			error = true;
			session.setAttribute("uname_err", uname_err);
		} else {
			c.setAccountName(name);
		}
		String address = request.getParameter("address");
		session.setAttribute("address", address);
		String address_err = "";
		if (address == null || address.equals("")) {
			address_err = " Địa chỉ không được để trống";

			error = true;
			session.setAttribute("address_err", address_err);

		} else {
			c.setAccountAddress(address);
		}
		String phone = request.getParameter("phone");
		session.setAttribute("phone", phone);
		String phone_err = "";
		if (phone == null || phone.equals("")) {
			phone_err = "Số điện thoại không được để trống";
			error = true;
			session.setAttribute("phone_err", phone_err);
		} else {
			c.setAccountPhone(phone);
		}

		if (error) {
			System.out.println("error");
			String url = request.getContextPath() + "/Ad_AccountEdit.jsp";
			response.sendRedirect(url);
		} else {

			try {
				if (AccountDAO.updateAccountAddress(c)
						&& AccountDAO.updateAccountName(c)
						&& AccountDAO.updateAccountPhone(c)) {

					String url = request.getContextPath() + "/Ad_Account.jsp";
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
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	}

}
