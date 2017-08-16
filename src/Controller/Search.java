package Controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Search")
public class Search extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	response.setContentType("text/html");
	request.setCharacterEncoding("utf8");
	response.setCharacterEncoding("utf8");
	PrintWriter out = response.getWriter();
	Connection conn = null;
	String url = "jdbc:sqlserver://localhost:1433;databaseName=Web;";
	String user = "sa";
	String pass = "12345";
	Statement st;
		try{
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
			conn = DriverManager.getConnection(url,user,pass);
			System.out.println("Connected");
			String search = request.getParameter("search");

			ArrayList al = null;
			ArrayList pid_list = new ArrayList();
			
			String query = "Select * From SanPham sp where sp.tenSP like '%" + search +"%' ";
			
			//System.out.println("query" + query);
			st = conn.createStatement();
			ResultSet rs = st.executeQuery(query);
			
			while(rs.next()){
				al = new ArrayList();
				al.add(rs.getString(8));
				al.add(rs.getString(9));
				al.add(rs.getString(2));
				al.add(rs.getString(4));
				
				pid_list.add(al);
			}// end while
			request.setAttribute("piList", pid_list);
			RequestDispatcher view = request.getRequestDispatcher("/viewsearch.jsp");
			view.forward(request, response);
			conn.close();
					
		}catch(Exception e){
			e.printStackTrace();
		} // end try-catch	
	}

	@Override
	public String getServletInfo() {
		// TODO Auto-generated method stub
		return "Just show description";
	}
}
