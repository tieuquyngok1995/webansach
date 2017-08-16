package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.logging.Level;
import java.util.logging.Logger;

import Connect.DBConnect;

public class FileUpLoadDAO {
	public void inserFile() {
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "INSERT INTO FileUpLoad(FileName,Url,photo) VALUES(?,?,?)";
			PreparedStatement ps = connection.prepareCall(sql);
			int temp = ps.executeUpdate();
		} catch (Exception e) {
			Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE,
					null, e);
		}
	}
}
