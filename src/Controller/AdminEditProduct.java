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
import DAO.ProductDAO;
import Model.Account;
import Model.SanPham;

/**
 * Servlet implementation class AdminEditSanPham
 */
@WebServlet("/AdminEditProduct")
public class AdminEditProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminEditProduct() {
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
		request.setCharacterEncoding("utf8");
		response.setCharacterEncoding("utf8");
		String idSP = request.getParameter("idSP").trim();
		SanPham sp = ProductDAO.lookingforSanPham(idSP);

		boolean error = false;
		HttpSession sessionAdsp = request.getSession();
		String tenSP = request.getParameter("tenSP").trim();
		sessionAdsp.setAttribute("tenSP", tenSP);
		String tenSP_err = "";
		if (tenSP == null || tenSP.equals("")) {
			tenSP_err = "Không được trống";
			error = true;
			sessionAdsp.setAttribute("tenSP_err", tenSP_err);

		} else {
			sp.setTenSP(tenSP);
		}
		String img = request.getParameter("img").trim();
		sessionAdsp.setAttribute("img", img);
		sp.setImg(img);
		String giarq = request.getParameter("gia").trim();
		long gia = (long) Double.parseDouble(giarq);
		sessionAdsp.setAttribute("gia", gia);
		String gia_err = "";
		if (gia ==0) {
			gia_err = "Không được để trống";
			error = true;
			sessionAdsp.setAttribute("gia_err", gia_err);

		} else {
			sp.setGia(gia);;
		}
		String idCTSP = request.getParameter("idCTSP").trim();
		String idCTSP_err = " ";
		if (idCTSP == null || idCTSP.equals("")) {
			idCTSP_err = "K được để trống";
			error = true;
			sessionAdsp.setAttribute("idCTSP", idCTSP);

		} else {
			sp.setIdCTSP(idCTSP);
		}

		String idLoaiSP = request.getParameter("idLoaiSP").trim();
		String idLoaiSP_err = " ";
		if (idCTSP == null || idCTSP.equals("")) {
			idLoaiSP_err = "K được để trống";
			error = true;
			sessionAdsp.setAttribute("idLoaiSP", idLoaiSP);

		} else {
			sp.setIdLoaiSP(idLoaiSP);

		}
		String soLuongrq = request.getParameter("soLuong").trim();
		int soLuong = Integer.parseInt(soLuongrq);
		sessionAdsp.setAttribute("soLuong", soLuong);
		String soLuong_err = "";
		if (soLuongrq == null || soLuongrq.equals("")) {
			soLuong_err = "Không được để trống";
			error = true;
			sessionAdsp.setAttribute("soLuong_err", soLuong_err);
		} else {
			sp.setSoLuong(soLuong);

		}

		if (error) {
			System.out.println("error");
			String url = request.getContextPath() + "/Ad_ProductEdit.jsp";
			response.sendRedirect(url);
		} else {

			try {
				if (ProductDAO.updateTenSanPham(sp) || ProductDAO.updateGia(sp) || ProductDAO.updateSanPhamSoLuong(sp)
						|| ProductDAO.updateImgSanPham(sp)) {
					System.out.println("da dung roi");
					String url = request.getContextPath() + "/Ad_Product.jsp";
					sessionAdsp.invalidate();
					response.sendRedirect(url);
				}
			} catch (SQLException e) {

				e.printStackTrace();
			}

		}
	}
}
