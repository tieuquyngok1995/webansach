package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import Connect.DBConnect;
import Model.CauHinhSPLT;


public class CauHinhSPLTDAO {
	public static ArrayList<CauHinhSPLT> chSP;
	public static Map<String, Integer> tksp;
	public static boolean login = false;
	public static String emailUser = "";

	public static ArrayList<CauHinhSPLT> getCHSPLT() {
		if (chSP == null) {
			chSP = new ArrayList<CauHinhSPLT>();
		}
		if (chSP.size() == 0) {
			try {
				Connection conn = DBConnect.getConnection();
				Statement stmt = conn.createStatement();
				String sql = "Select * From CauHinhSP ";
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					CauHinhSPLT chSPLT = new CauHinhSPLT(
							rs.getString("idSP"),rs.getString("tenSP"),rs.getString("CPU"),rs.getString("Ram"),
							rs.getString("oCung"),rs.getString("manHinh"),rs.getString("camUng"),rs.getString("doHoa"),
							rs.getString("webCam"),rs.getString("cLV"),rs.getLong("gia"),rs.getString("img"),rs.getString("src"));
							
					chSP.add(chSPLT);
				}
				conn.close();
			} catch (Exception e) {
				System.err.println("lay danh sach san pham bi: " + e);
			}
		}
		return chSP;
	}

	
	public static int getMaxSoLuongSP(String idSP) {
		try {
			Connection conn = DBConnect.getConnection();
			String sql = "select sp.soLuong from SanPham sp where idSP = ?";
			PreparedStatement pr = conn.prepareStatement(sql);
			pr.setString(1, idSP);
			ResultSet rs = pr.executeQuery();
			while (rs.next()) {
				return rs.getInt("soLuong");
			}
		} catch (Exception e) {
			System.err.println("getMaxSoLuongSP: " + e);
			e.printStackTrace();
		}
		return 0;
	}

	public static String getMoTaSP(String idSP) {
		try {
			Connection conn = DBConnect.getConnection();
			String sql = "select ct.moTa from SanPham sp join ChiTietSanPham ct on sp.idCTSP = ct.idCTSP where sp.idSP = ?";
			PreparedStatement pr = conn.prepareStatement(sql);
			pr.setString(1, idSP);
			ResultSet rs = pr.executeQuery();
			while (rs.next()) {
				return rs.getString("moTa");
			}
		} catch (Exception e) {
			System.err.println("getMaxSoLuongSP: " + e);
			e.printStackTrace();
		}
		return null;
	}

	public static double getGiamGiaSP(String idSP) {
		try {
			Connection conn = DBConnect.getConnection();
			String sql = "select ct.giamGia from SanPham sp join ChiTietSanPham ct on sp.idCTSP = ct.idCTSP where sp.idSP = ?";
			PreparedStatement pr = conn.prepareStatement(sql);
			pr.setString(1, idSP);
			ResultSet rs = pr.executeQuery();
			while (rs.next()) {
				return rs.getDouble("giamGia");
			}
		} catch (Exception e) {
			System.err.println("getGiamGiaSP: " + e);
			e.printStackTrace();
		}
		return 0;
	}

	/*
	 * Pháº§n giá»� hÃ ng
	 */
	public static ArrayList<SanPham> gioHang = new ArrayList<SanPham>();

	public static ArrayList<SanPham> getGH() {
		return gioHang;
	}

	public static boolean themGH(SanPham sp) {
		if (gioHang.size() == 0) {
			return gioHang.add(sp);
		} else {
			for (SanPham sanPham : gioHang) {
				if (sanPham.getIdSP().equals(sp.getIdSP())) {
					sanPham.setSoLuong(sanPham.getSoLuong() + 1);
					return true;
				} else {
					return gioHang.add(sp);
				}
			}
		}
		return false;
	}

	public static boolean xoaGH(String idsp) {
		System.out.println("xoa, soluong: " + gioHang.size());
		for (int i = 0; i < gioHang.size(); i++) {
			if (gioHang.get(i).getIdSP().equals(idsp)) {
				System.out.println("da thay sp");
				gioHang.remove(i);
				return true;
			}
		}
		return false;
	}

	public static double tongTienGH() {
		double sum = 0;
		for (SanPham sp : gioHang) {
			sum += sp.thanhToan();
		}
		return sum;
	}

	public static void deleteAllGH() {
		for (int i = gioHang.size() - 1; i >= 0; i--) {
			gioHang.remove(i);
		}

	}

	public static Map<String, Integer> getTksp() {
		Map<String, Integer> tksp = new HashMap<String, Integer>();
		try {
			Connection conn = DBConnect.getConnection();
			String sql = "select * from Tksp";
			PreparedStatement pr = conn.prepareStatement(sql);
			ResultSet rs = pr.executeQuery();
			while (rs.next()) {
				String idsp = rs.getString("Idsp");
				int soLuong = rs.getInt("SoLuong");
				tksp.put(idsp, soLuong);
			}
		} catch (Exception e) {
			System.err.println("getTksp bi loi " + e);
			e.printStackTrace();
		}
		return tksp;
	}

	public static boolean themTksp(String idsp, int soLuong) {
		try {
			Connection conn = DBConnect.getConnection();
			String sql = "insert into Tksp value(?,?)";
			PreparedStatement pr = conn.prepareStatement(sql);
			pr.setString(1, idsp);
			pr.setInt(2, soLuong);
			int i = pr.executeUpdate();
			if (i > 0) {
				return true;
			} else
				return false;
		} catch (Exception e) {
			System.err.println("themTksp bi loi " + e);
			e.printStackTrace();
			return false;
		}
	}

	public static boolean suaTksp(String idsp, int soLuong) {
		try {
			Connection conn = DBConnect.getConnection();
			String sql = "update Tksp value set SoLuong = ? where Idsp = ?";
			PreparedStatement pr = conn.prepareStatement(sql);
			pr.setInt(1, soLuong);
			pr.setString(2, idsp);
			int i = pr.executeUpdate();
			if (i > 0) {
				return true;
			} else
				return false;
		} catch (Exception e) {
			System.err.println("themTksp bi loi " + e);
			e.printStackTrace();
			return false;
		}
	}

	public static boolean addTksp(String idsp, int soLuong) {
		try {
			if (getTksp().containsKey(idsp)) {
				int soLuongTruoc = getTksp().get(idsp);
				int soLuongSau = soLuongTruoc + soLuong;
				return suaTksp(idsp, soLuongSau);
			} else
				return themTksp(idsp, soLuong);
		} catch (Exception e) {
			System.err.println("addTksp bi loi " + e);
			e.printStackTrace();
			return false;
		}
	}
}
