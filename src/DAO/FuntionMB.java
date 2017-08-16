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

public class FuntionMB {
	public static ArrayList<SanPham> dsSP;
	public static Map<String, Integer> tksp;
	public static boolean login = false;
	public static String emailUser = "";

	public static ArrayList<SanPham> getDSSP() {
		if (dsSP == null) {
			dsSP = new ArrayList<SanPham>();
		}
		if (dsSP.size() == 0) {
			try {
				Connection conn = DBConnect.getConnection();
				Statement stmt = conn.createStatement();
				String sql = "Select * From SanPham sp where sp.idLoaiSP ='mb'";
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					SanPham sp = new SanPham(rs.getString("idSP"),
							rs.getString("tenSP"), rs.getString("idCTSP"),
							rs.getLong("gia"), rs.getInt("soLuong"),
							rs.getString("idLoaiSP"), rs.getString("hangSX"),
							rs.getString("img"), rs.getString("src"));
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
