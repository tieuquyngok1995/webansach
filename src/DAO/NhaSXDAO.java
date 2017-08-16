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
import Model.NhaSX;


public class NhaSXDAO {
	public static NhaSX lookingforKho(String maNhaSX) {

		try {
			Connection connection = DBConnect.getConnection();
			String sql = "select * from NhaSX where maNhaSX=?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, maNhaSX);
			ResultSet rs = ps.executeQuery();
			NhaSX nhasx = new NhaSX();
			while (rs.next()) {
				nhasx.setMaNhaSX(rs.getString("maNhaSX"));
				nhasx.setTenNhaSX(rs.getString("tenNhaSX"));
				nhasx.setDiaChiNhaSX(rs.getString("diaChiNhaSX"));
				nhasx.setNgayKHD(rs.getString("ngayKHD"));
				nhasx.setMatHang(rs.getString("matHang"));
				
			}
			connection.close();
			return nhasx;
		} catch (Exception e) {
			Logger.getLogger(NhaSX.class.getName())
					.log(Level.SEVERE, null, e);
		}
		return null;
	}

	public static ArrayList<NhaSX> getListNhaSX() {
		Connection cons = DBConnect.getConnection();
		String sql = "SELECT * FROM NhaSX";
		ArrayList<NhaSX> list = new ArrayList<>();
		try {
			PreparedStatement ps = (PreparedStatement) cons
					.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				NhaSX nhasx = new NhaSX();
				nhasx.setMaNhaSX(rs.getString("maNhaSX"));
				nhasx.setTenNhaSX(rs.getString("tenNhaSX"));
				nhasx.setDiaChiNhaSX(rs.getString("diaChiNhaSX"));
				nhasx.setNgayKHD(rs.getString("ngayKHD"));
				nhasx.setMatHang(rs.getString("matHang"));
				list.add(nhasx);
			}
			rs.close();
			ps.close();
			cons.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	public static void insertNhaSX(NhaSX nhasx) {
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "INSERT INTO NhaSX VALUES(?,?,?,?,?)";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, nhasx.getMaNhaSX().trim());
			ps.setString(2, nhasx.getTenNhaSX().trim());
			ps.setString(3, nhasx.getDiaChiNhaSX().trim());
			ps.setString(4, nhasx.getNgayKHD().trim());
			ps.setString(5, nhasx.getMatHang().trim());
			int temp = ps.executeUpdate();
			connection.close();
		} catch (Exception e) {
			Logger.getLogger(NhaSXDAO.class.getName())
					.log(Level.SEVERE, null, e);
		}
	}

	public static boolean updateTenNhaSX(NhaSX nhasx) throws SQLException {
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "UPDATE NhaSX SET tenNhaSX = ?  WHERE maNhaSX = ?";

			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, nhasx.getTenNhaSX());
			ps.setString(2, nhasx.getMaNhaSX());

			int temp = ps.executeUpdate();
			connection.close();
			return temp == 1;
		} catch (Exception e) {
			return false;
		}
	}

	public static boolean updateDiaChiNhaSX(NhaSX sp) throws SQLException {
		try {

			Connection connection = DBConnect.getConnection();
			String sql = "UPDATE NhaSX SET diaChiNhaSX = ?  WHERE maNhaSX = ?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, sp.getDiaChiNhaSX());
			ps.setString(2, sp.getMaNhaSX());
			int temp = ps.executeUpdate();
			connection.close();
			return temp == 1;

		} catch (Exception e) {
			return false;
		}
	}

	public static boolean updateNgayKHD(NhaSX sp) throws SQLException {
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "UPDATE NhaSX SET ngayKHD = ?  WHERE maNhaSX = ?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, sp.getNgayKHD());
			ps.setString(2, sp.getMaNhaSX());
			int temp = ps.executeUpdate();
			connection.close();
			return temp == 1;
		} catch (Exception e) {
			return false;
		}
	}

	public static boolean updateMatHang(NhaSX sp) throws SQLException {
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "UPDATE NhaSX SET matHang = ?  WHERE maNhaSX = ?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, sp.getMatHang());
			ps.setString(2, sp.getMaNhaSX());
			int temp = ps.executeUpdate();
			connection.close();
			return temp == 1;

		} catch (Exception e) {
			return false;
		}
	}

	public static boolean deleteNhaSX(String maNhaSX) throws SQLException {
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "DELETE FROM NhaSX WHERE maNhaSX = ?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, maNhaSX);
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
