package Connect;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	public static Connection getConnection() {
		Connection connection = null;
		String user = "sa";
		String pass = "12345";
		String url = "jdbc:sqlserver://localhost:1433;databaseName=Web;";

		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			connection = (Connection) DriverManager.getConnection(url, user,
					pass);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return connection;

	}

	public static void main(String[] args) {
		Connection connect = DBConnect.getConnection();
		if (connect != null) {
			System.out.println("Kết Nối Thành Công");
		} else
			System.out.println("Kết Nối Thất Bại");
	}

}
