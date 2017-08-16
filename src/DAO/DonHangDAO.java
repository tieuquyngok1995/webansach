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
import Model.DonHang;
import Model.SuKien;

public class DonHangDAO {
	public static DonHang lookingforDonHang(String maDH) {

		try {
			Connection connection = DBConnect.getConnection();
			String sql = "select * from DonHang where maDH=?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, maDH);
			ResultSet rs = ps.executeQuery();
			DonHang tt = new DonHang();
			while (rs.next()) {
				tt.setMaDH(rs.getString("maDH"));
				tt.setTenTK(rs.getString("tenTK"));
				tt.setSanPham(rs.getString("sanPham"));
				tt.setSoLuong(rs.getString("soLuong"));;
				tt.setDonGia(rs.getString("donGia"));
				
			}
			connection.close();
			return tt;
		} catch (Exception e) {
			Logger.getLogger(DonHang.class.getName())
					.log(Level.SEVERE, null, e);
		}
		return null;
	}

	public static ArrayList<DonHang> getListDonHang() {
		Connection cons = DBConnect.getConnection();
		String sql = "SELECT * FROM DonHang";
		ArrayList<DonHang> list = new ArrayList<>();
		try {
			PreparedStatement ps = (PreparedStatement) cons
					.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				DonHang tt = new DonHang();
				tt.setMaDH(rs.getString("maDH"));
				tt.setTenTK(rs.getString("tenTK"));
				tt.setSanPham(rs.getString("sanPham"));
				tt.setSoLuong(rs.getString("soLuong"));;
				tt.setDonGia(rs.getString("donGia"));
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
			Logger.getLogger(DonHangDAO.class.getName())
					.log(Level.SEVERE, null, e);
		}
	}

	public static boolean updateTenTK(DonHang tt) throws SQLException {
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "UPDATE DonHang SET tenTK = ?  WHERE maDH = ?";

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

	public static boolean updateSanPham(DonHang sp) throws SQLException {
		try {

			Connection connection = DBConnect.getConnection();
			String sql = "UPDATE DonHang SET sanPham = ?  WHERE maDH = ?";
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

	public static boolean updateSoLuong(DonHang sp) throws SQLException {
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "UPDATE DonHang SET soLuong = ?  WHERE maDH = ?";
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

	public static boolean updateDonGia(DonHang sp) throws SQLException {
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "UPDATE DonHang SET donGia = ?  WHERE maDH = ?";
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

	public static boolean deleteDonHang(String maDH) throws SQLException {
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "DELETE FROM DonHang WHERE maDH = ?";
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
