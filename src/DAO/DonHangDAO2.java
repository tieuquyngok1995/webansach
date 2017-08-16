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
import Model.DonHang2;
import Model.SuKien;

public class DonHangDAO2 {
	public static DonHang2 lookingforDonHang(String maDH) {

		try {
			Connection connection = DBConnect.getConnection();
			String sql = "select * from DonHang2 where maDH=?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, maDH);
			ResultSet rs = ps.executeQuery();
			DonHang2 tt = new DonHang2();
			while (rs.next()) {
				tt.setMaDH(rs.getString("maDH"));
				tt.setTenTK(rs.getString("tenTK"));
				tt.setSanPham(rs.getString("sanPham"));
				tt.setSoLuong(rs.getString("soLuong"));;
				tt.setDonGia(rs.getString("donGia"));
				tt.setNgayMua(rs.getString("ngayMua"));
			}
			connection.close();
			return tt;
		} catch (Exception e) {
			Logger.getLogger(DonHang2.class.getName())
					.log(Level.SEVERE, null, e);
		}
		return null;
	}

	public static ArrayList<DonHang2> getListDonHang() {
		Connection cons = DBConnect.getConnection();
		String sql = "SELECT * FROM DonHang2";
		ArrayList<DonHang2> list = new ArrayList<>();
		try {
			PreparedStatement ps = (PreparedStatement) cons
					.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				DonHang2 tt = new DonHang2();
				tt.setMaDH(rs.getString("maDH"));
				tt.setTenTK(rs.getString("tenTK"));
				tt.setSanPham(rs.getString("sanPham"));
				tt.setSoLuong(rs.getString("soLuong"));;
				tt.setDonGia(rs.getString("donGia"));
				tt.setNgayMua(rs.getString("ngayMua"));
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
			Logger.getLogger(DonHangDAO2.class.getName())
					.log(Level.SEVERE, null, e);
		}
	}

	public static boolean updateTenTK(DonHang2 tt) throws SQLException {
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "UPDATE DonHang2 SET tenTK = ?  WHERE maDH = ?";

			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, tt.getTenTK());
			ps.setString(2, tt.getMaDH());

			int temp = ps.executeUpdate();
			connection.close();
			return temp == 1;
		} catch (Exception e) {
			return false;
		}
	}

	public static boolean updateSanPham(DonHang2 sp) throws SQLException {
		try {

			Connection connection = DBConnect.getConnection();
			String sql = "UPDATE DonHang2 SET sanPham = ?  WHERE maDH = ?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, sp.getSanPham());
			ps.setString(2, sp.getMaDH());
			int temp = ps.executeUpdate();
			connection.close();
			return temp == 1;

		} catch (Exception e) {
			return false;
		}
	}

	public static boolean updateSoLuong(DonHang2 sp) throws SQLException {
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "UPDATE DonHang2 SET soLuong = ?  WHERE maDH = ?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, sp.getSoLuong());
			ps.setString(2, sp.getMaDH());
			int temp = ps.executeUpdate();
			connection.close();
			return temp == 1;
		} catch (Exception e) {
			return false;
		}
	}

	public static boolean updateDonGia(DonHang2 sp) throws SQLException {
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "UPDATE DonHang2 SET donGia = ?  WHERE maDH = ?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, sp.getDonGia());
			ps.setString(2, sp.getMaDH());
			int temp = ps.executeUpdate();
			connection.close();
			return temp == 1;

		} catch (Exception e) {
			return false;
		}
	}

	public static boolean updateNgayMua(DonHang2 sp) throws SQLException {
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "UPDATE DonHang2 SET ngayMua = ?  WHERE maDH = ?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, sp.getNgayMua());
			ps.setString(2, sp.getMaDH());
			int temp = ps.executeUpdate();
			connection.close();
			return temp == 1;

		} catch (Exception e) {
			return false;
		}
	}
	public static boolean deleteDonHang2(String maDH) throws SQLException {
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "DELETE FROM DonHang2 WHERE maDH = ?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, maDH);
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
