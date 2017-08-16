package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.MD5;
import DAO.ProductDAO;
import Model.Account;
import Model.SanPham;

/**
 * Servlet implementation class AdminCreateProduct
 */
@WebServlet("/AdminCreateProduct")
public class AdminCreateProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminCreateProduct() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		boolean error = false;
		ProductDAO proDao = new ProductDAO();
		request.setCharacterEncoding("utf8");
		response.setCharacterEncoding("utf8");
		String idSP = request.getParameter("idSP");
		String tenSP = request.getParameter("tenSP");
		String tenSP_err = "";
		String idCTSP = request.getParameter("idCTSP");
		String idLoaiSP = request.getParameter("idLoaiSP");
		String idCTSP_err = "";
		String soLuongSS = request.getParameter("soLuong");
		String soLuong_err = "";
		int soLuong = Integer.parseInt(soLuongSS);
		String img = request.getParameter("img");

		String gia_err = "";

		if (tenSP == null || tenSP.equals("")) {
			tenSP_err = "Tên K Được Để Trống";
			error = true;
			request.setAttribute("tenSP_err", tenSP_err);

		}
		if (ProductDAO.checkTenSP(tenSP) == true) {
			tenSP_err = "Tên đã được đăng Ký";
			error = true;
			request.setAttribute("tenSP_error", tenSP_err);
		}
		if (idCTSP == null || idCTSP.equals("")) {
			idCTSP_err = "K Được Để Trống";
			error = true;
			request.setAttribute("idCTSP_error", idCTSP_err);
		}
		String giaSS = request.getParameter("gia");
		long gia = (long) Double.parseDouble(giaSS);
		if (giaSS == null || giaSS.equals("")) {
			gia_err = "Giá không được để trống";
			error = true;
			request.setAttribute("gia", gia_err);
		}

		String idSP_err = "";
		if (!ProductDAO.checkidSP(idSP)) {
			error = true;
			idSP_err = "Id bị trùng";
			request.setAttribute("idSP_err", idSP_err);
		}
		if (ProductDAO.checkTenSP(tenSP)) {
			error = true;
			tenSP_err = "Sản phẫm đã tồn tại";
			request.setAttribute("tenSP_err", tenSP_err);
		}

		if (error) {
			RequestDispatcher rd = getServletContext().getRequestDispatcher(
					"/Ad_CreateProduct.jsp");
			rd.forward(request, response);

		} else {
			String url = "/Ad_Product.jsp";
			RequestDispatcher dispather = getServletContext()
					.getRequestDispatcher(url);

			SanPham sp = new SanPham();

			sp.setIdSP(idSP);
			sp.setTenSP(tenSP);
			sp.setIdCTSP(idCTSP);
			sp.setGia(gia);
			sp.setSoLuong(soLuong);
			sp.setIdLoaiSP(idLoaiSP);
			sp.setImg(img);

			ProductDAO.insertSanPham(sp);
			//
			dispather.forward(request, response);

		}

	}

}
