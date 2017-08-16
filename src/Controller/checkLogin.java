package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.AccountDAO;
import DAO.FuntionLT;
import service.MD5;


/**
 * Servlet implementation class checkLogin
 */
@WebServlet("/checkLogin")
public class checkLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public checkLogin() {
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
		HttpSession session = request.getSession();
		boolean error = false;
		request.setCharacterEncoding("utf8");
		response.setCharacterEncoding("utf8");
		String email = request.getParameter("emaillg");
		String pass = request.getParameter("passlg");
		String email_err_lg = "";
		String pass_err_lg = "";
		String mg_err = "";
		if (email.equals("") || pass.equals("")) {
			error = true;
			email_err_lg = "Vui Lòng điền đầy đủ Email";
			pass_err_lg = "Vui Lòng điền đầy đủ Pass";
			request.setAttribute("email_error_lg", email_err_lg);
			request.setAttribute("pass_error_lg", pass_err_lg);
		} else if (AccountDAO.checkLogin(email, MD5.getMD5(pass)) == false) {
			mg_err = "Email hoặc PassWord Sai";
			request.setAttribute("mg_err", mg_err);
			error = true;
		}
		String url1 = "/login.jsp";
		if (error) {
			RequestDispatcher rd = getServletContext().getRequestDispatcher(
					url1);
			rd.forward(request, response);

		} else {
			if (email.equals("Admin@gmail.com")) {
				HttpSession sessionad = request.getSession();
				String url2 = "/Ad_Account.jsp";
				RequestDispatcher dispather = getServletContext()
						.getRequestDispatcher(url2);

				sessionad.setAttribute("email", email);

				dispather.forward(request, response);
			} else {
				String url2 = "/index.jsp";
				RequestDispatcher dispather = getServletContext()
						.getRequestDispatcher(url2);

				session.setAttribute("email", email);
				dispather.forward(request, response);
			}
		}

	}

}
