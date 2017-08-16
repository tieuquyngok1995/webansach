package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import Connect.DBConnect;
import Model.SanPham;
import Model.SanPhamGY;

public class FuntionSPGY1 {
	public static ArrayList<SanPhamGY> dsSP;
	public static Map<String, Integer> tksp;
	public static boolean login = false;
	public static String emailUser = "";

	public static ArrayList<SanPhamGY> getDSSP() {
		if (dsSP == null) {
			dsSP = new ArrayList<SanPhamGY>();
		}
		if (dsSP.size() == 0) {
			try {
				Connection conn = DBConnect.getConnection();
				Statement stmt = conn.createStatement();
				String sql = " select*from SanPham ORDER BY NEWID()";
			
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					SanPhamGY sp = new SanPhamGY(
							rs.getString("idSP"), rs.getString("tenSP"), rs.getLong("gia"), rs.getString("img"), rs.getString("src"));
					dsSP.add(sp);
				}
				conn.close();
			} catch (Exception e) {
				System.err.println("lay danh sach san pham bi: " + e);
			}
		}
		return dsSP;
	}

	
	
}
