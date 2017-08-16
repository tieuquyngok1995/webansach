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
import Model.Kho;

public class KhoDAO {
	public static Kho lookingforKho(String maKho) {

		try {
			Connection connection = DBConnect.getConnection();
			String sql = "select * from Kho where MaKho=?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, maKho);
			ResultSet rs = ps.executeQuery();
			Kho kho = new Kho();
			while (rs.next()) {
				kho.setMakho((rs.getString("maKho")));
				kho.setTenkho((rs.getString("tenKho")));
				kho.setDiachi((rs.getString("diaChi")));
				kho.setNgaythue(rs.getString("ngayThue"));
				kho.setPhithue(rs.getString("phiThue"));
				
			}
			connection.close();
			return kho;
		} catch (Exception e) {
			Logger.getLogger(Kho.class.getName())
					.log(Level.SEVERE, null, e);
		}
		return null;
	}

	public static ArrayList<Kho> getListKho() {
		Connection cons = DBConnect.getConnection();
		String sql = "SELECT * FROM Kho";
		ArrayList<Kho> list = new ArrayList<>();
		try {
			PreparedStatement ps = (PreparedStatement) cons
					.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Kho kho = new Kho();
				kho.setMakho((rs.getString("maKho")));
				kho.setTenkho((rs.getString("tenKho")));
				kho.setDiachi((rs.getString("diaChi")));
				kho.setNgaythue(rs.getString("ngayThue"));
				kho.setPhithue(rs.getString("phiThue"));
				list.add(kho);
			}
			rs.close();
			ps.close();
			cons.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	public static void insertKho(Kho kho) {
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "INSERT INTO Kho VALUES(?,?,?,?,?)";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, kho.getMakho().trim());
			ps.setString(2, kho.getTenkho().trim());
			ps.setString(3, kho.getDiachi().trim());
			ps.setString(4, kho.getNgaythue().trim());
			ps.setString(5, kho.getPhithue().trim());
			int temp = ps.executeUpdate();
			connection.close();
		} catch (Exception e) {
			Logger.getLogger(KhoDAO.class.getName())
					.log(Level.SEVERE, null, e);
		}
	}

	public static boolean updateKhoName(Kho kho) throws SQLException {
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "UPDATE Kho SET tenKho = ?  WHERE maKho = ?";

			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, kho.getTenkho());
			ps.setString(2, kho.getMakho());

			int temp = ps.executeUpdate();
			connection.close();
			return temp == 1;
		} catch (Exception e) {
			return false;
		}
	}

	public static boolean updateKhodiaChi(Kho sp) throws SQLException {
		try {

			Connection connection = DBConnect.getConnection();
			String sql = "UPDATE Kho SET diaChi = ?  WHERE maKho = ?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, sp.getDiachi());
			ps.setString(2, sp.getMakho());
			int temp = ps.executeUpdate();
			connection.close();
			return temp == 1;

		} catch (Exception e) {
			return false;
		}
	}

	public static boolean updateKhongayThue(Kho sp) throws SQLException {
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "UPDATE Kho SET ngayThue = ?  WHERE maKho = ?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, sp.getNgaythue());
			ps.setString(2, sp.getMakho());
			int temp = ps.executeUpdate();
			connection.close();
			return temp == 1;
		} catch (Exception e) {
			return false;
		}
	}

	public static boolean updateKhophiThue(Kho sp) throws SQLException {
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "UPDATE Kho SET phiThue = ?  WHERE maKho = ?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, sp.getPhithue());
			ps.setString(2, sp.getMakho());
			int temp = ps.executeUpdate();
			connection.close();
			return temp == 1;

		} catch (Exception e) {
			return false;
		}
	}

	public static boolean deleteKho(String maKho) throws SQLException {
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "DELETE FROM Kho WHERE maKho = ?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, maKho);
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
