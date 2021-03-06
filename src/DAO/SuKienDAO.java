package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import Connect.DBConnect;
import Model.SuKien;

public class SuKienDAO {
	public static SuKien lookingforSuKien(String STT) {

		try {
			Connection connection = DBConnect.getConnection();
			String sql = "select * from SuKien where STT=?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, STT);
			ResultSet rs = ps.executeQuery();
			SuKien tt = new SuKien();
			while (rs.next()) {
				tt.setSTT(rs.getString("STT"));
				tt.setTieuDe(rs.getString("tieuDe"));
				tt.setnDTT(rs.getString("nDTT"));
				tt.setnDC(rs.getString("nDC"));
				tt.setNgayDang(rs.getString("ngayDang"));
				
			}
			connection.close();
			return tt;
		} catch (Exception e) {
			Logger.getLogger(SuKien.class.getName())
					.log(Level.SEVERE, null, e);
		}
		return null;
	}

	public static ArrayList<SuKien> getListSuKien() {
		Connection cons = DBConnect.getConnection();
		String sql = "SELECT * FROM SuKien";
		ArrayList<SuKien> list = new ArrayList<>();
		try {
			PreparedStatement ps = (PreparedStatement) cons
					.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				SuKien tt = new SuKien();
				tt.setSTT(rs.getString("STT"));
				tt.setTieuDe(rs.getString("tieuDe"));
				tt.setnDTT(rs.getString("nDTT"));
				tt.setnDC(rs.getString("nDC"));
				tt.setNgayDang(rs.getString("ngayDang"));
				list.add(tt);
			}
			rs.close();
			ps.close();
			cons.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	public static void insertSuKien(SuKien tt) {
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "INSERT INTO SuKien VALUES(?,?,?,?,?)";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, tt.getSTT().trim());
			ps.setString(2, tt.getTieuDe().trim());
			ps.setString(3, tt.getnDTT().trim());
			ps.setString(4, tt.getnDC().trim());
			ps.setString(5, tt.getNgayDang().trim());
			int temp = ps.executeUpdate();
			connection.close();
		} catch (Exception e) {
			Logger.getLogger(SuKienDAO.class.getName())
					.log(Level.SEVERE, null, e);
		}
	}

	public static boolean updateTieuDe(SuKien tt) throws SQLException {
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "UPDATE SuKien SET tieuDe = ?  WHERE STT = ?";

			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, tt.getTieuDe());
			ps.setString(2, tt.getSTT());

			int temp = ps.executeUpdate();
			connection.close();
			return temp == 1;
		} catch (Exception e) {
			return false;
		}
	}

	public static boolean updatenDTT(SuKien sp) throws SQLException {
		try {

			Connection connection = DBConnect.getConnection();
			String sql = "UPDATE SuKien SET nDTT = ?  WHERE STT = ?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, sp.getnDTT());
			ps.setString(2, sp.getSTT());
			int temp = ps.executeUpdate();
			connection.close();
			return temp == 1;

		} catch (Exception e) {
			return false;
		}
	}

	public static boolean updatenDC(SuKien sp) throws SQLException {
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "UPDATE SuKien SET nDC = ?  WHERE STT = ?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, sp.getnDC());
			ps.setString(2, sp.getSTT());
			int temp = ps.executeUpdate();
			connection.close();
			return temp == 1;
		} catch (Exception e) {
			return false;
		}
	}

	public static boolean updateNgayDang(SuKien sp) throws SQLException {
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "UPDATE SuKien SET ngayDang = ?  WHERE STT = ?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, sp.getNgayDang());
			ps.setString(2, sp.getSTT());
			int temp = ps.executeUpdate();
			connection.close();
			return temp == 1;

		} catch (Exception e) {
			return false;
		}
	}

	public static boolean deleteSuKien(String STT) throws SQLException {
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "DELETE FROM SuKien WHERE STT = ?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, STT);
			int temp = ps.executeUpdate();
			connection.close();
			return temp == 1;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
//
//	public static boolean checkEmail(String e) {
//		boolean check = false;
//		for (String s : listSanPham()) {
//			if (e.trim().equalsIgnoreCase(s)) {
//				check = true;
//				break;
//			}
//		}
//		return check;
//	}
//
//	public static ArrayList<String> listSanPham() {
//		ArrayList<String> list = new ArrayList<String>();
//		Connection con = DBConnect.getConnection();
//		Statement state;
//		try {
//			state = (Statement) con.createStatement();
//			ResultSet res = state.executeQuery("select email from SanPham");
//			while (res.next()) {
//				list.add(res.getString("tenSP"));
//			}
//			con.close();
//		} catch (SQLException e) {
//			Logger.getLogger(SanPham.class.getName())
//					.log(Level.SEVERE, null, e);
//		}
//		return list;
//	}
//	
//	public static SanPham lookingSP(String IDSP) {
//
//		try {
//			Connection connection = DBConnect.getConnection();
//			String sql = "select sp.*, ct.giamGia from SanPham sp join ChiTietSanPham ct on sp.idCTSP=ct.idCTSP where sp.idSP=?";
//			PreparedStatement ps = connection.prepareStatement(sql);
//			ps.setString(1, IDSP);
//			ResultSet rs = ps.executeQuery();
//			while (rs.next()) {
//				SanPham sp = new SanPham(rs.getString("idSP"), rs.getString("tenSP"), rs.getString("idCTSP"),
//						rs.getLong("gia"), rs.getInt("soLuong"), rs.getString("idLoaiSP"), rs.getString("img"),
//						rs.getDouble("giamGia"));
//				return sp;
//			}
//		} catch (Exception e) {
//			System.err.println(e);
//		}
//		return null;
//	}

}
