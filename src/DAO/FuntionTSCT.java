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
import Model.ThongSoCT;

public class FuntionTSCT {
	public static ArrayList<ThongSoCT> dsSP;

	public static ArrayList<ThongSoCT> getDSSP() {
		if (dsSP == null) {
			dsSP = new ArrayList<ThongSoCT>();
		}
		if (dsSP.size() == 0) {
			try {
				Connection conn = DBConnect.getConnection();
				Statement stmt = conn.createStatement();
				String sql = "Select * From ChiTietSP WHERE idSP = 'lt01'";
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					ThongSoCT sp = new ThongSoCT(
rs.getString("idSP"), rs.getString("tenSP"), rs.getString("hangCPU"), rs.getString("congNgheCPU"), rs.getString("tocDoCPU"), 
rs.getString("ram"), rs.getString("loaiRam"), rs.getString("loaiOCung"), rs.getString("oCung"), rs.getString("ktMHinh"), rs.getString("doPGMH"), 
rs.getString("mhCU"), rs.getString("chipDoHoa"), rs.getString("boNhoDH"), rs.getString("kenhAT"), rs.getString("diaQuang"), rs.getString("congGT"), 
rs.getString("chanWF"), rs.getString("ketnoiKD"), rs.getString("pin"), rs.getString("hDH"), rs.getString("kichThuoc"), rs.getString("trongLuong"), 
rs.getString("tgBH"), rs.getLong("gia"), rs.getString("img1"), rs.getString("img2"), rs.getString("img3"), rs.getString("img4"));
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
