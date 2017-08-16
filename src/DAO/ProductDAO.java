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
import Model.Account;
import Model.SanPham;

public class ProductDAO {
	public static SanPham lookingforSanPham(String Id) {

		try {
			Connection connection = DBConnect.getConnection();
			String sql = "select * from SanPham where idSP=?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, Id);
			ResultSet rs = ps.executeQuery();
			SanPham sanPham = new SanPham();
			while (rs.next()) {
				sanPham.setIdSP((rs.getString("idSP")));
				sanPham.setTenSP(rs.getString("tenSP"));
				sanPham.setIdCTSP(rs.getString("idCTSP"));
				sanPham.setGia(rs.getLong("gia"));
				sanPham.setSoLuong(rs.getInt("soLuong"));
				sanPham.setIdLoaiSP(rs.getString("idLoaiSP"));
				sanPham.setHangSX(rs.getString("hangSX"));
				sanPham.setImg(rs.getString("img"));
				sanPham.setSrc(rs.getString("src"));
			}
			connection.close();
			return sanPham;
		} catch (Exception e) {
			Logger.getLogger(SanPham.class.getName())
					.log(Level.SEVERE, null, e);
		}
		return null;
	}

	public static ArrayList<SanPham> getListSanPham() {
		Connection cons = DBConnect.getConnection();
		String sql = "SELECT * FROM SanPham";
		ArrayList<SanPham> list = new ArrayList<>();
		try {
			PreparedStatement ps = (PreparedStatement) cons
					.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				SanPham sp = new SanPham();
				sp.setIdSP((rs.getString("idSP")));
				sp.setTenSP(rs.getString("tenSP"));
				sp.setIdCTSP(rs.getString("idCTSP"));
				sp.setGia(rs.getLong("gia"));
				sp.setSoLuong(rs.getInt("soLuong"));
				sp.setIdLoaiSP(rs.getString("idLoaiSP"));
				sp.setHangSX(rs.getString("hangSX"));
				sp.setImg(rs.getString("img"));
				sp.setSrc(rs.getString("src"));
				list.add(sp);
			}
			rs.close();
			ps.close();
			cons.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	public static boolean checkidSP(String idSP) {
		boolean check = true;
		Connection con = DBConnect.getConnection();
		String sql = "select * from SanPham where (idSP='" + idSP + "')";
		try {
			PreparedStatement ps = (PreparedStatement) con
					.prepareStatement(sql);
			ResultSet re = ps.executeQuery();
			while (re.next()) {
				return check = true;

			}
			ps.close();
			con.close();
		}

		catch (SQLException e) {
			Logger.getLogger(Account.class.getName())
					.log(Level.SEVERE, null, e);
		}
		return check;

	}

	public static void insertSanPham(SanPham sp) {
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "INSERT INTO SanPham VALUES(?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, sp.getIdSP().trim());
			ps.setString(2, sp.getTenSP().trim());
			ps.setString(3, sp.getIdCTSP().trim());
			ps.setLong(4, (long) (sp.getGia()));
			ps.setInt(5, sp.getSoLuong());
			ps.setString(6, sp.getIdLoaiSP().trim());
			ps.setString(7, sp.getHangSX().trim());
			ps.setString(8, sp.getImg().trim());
			ps.setString(9, sp.getSrc().trim());
			int temp = ps.executeUpdate();
			connection.close();
		} catch (Exception e) {
			Logger.getLogger(SanPham.class.getName())
					.log(Level.SEVERE, null, e);
		}
	}

	public static boolean updateTenSanPham(SanPham sp) throws SQLException {
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "UPDATE SanPham SET tenSP = ?  WHERE idSP = ?";

			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, sp.getTenSP());
			ps.setString(2, sp.getIdSP());

			int temp = ps.executeUpdate();
			connection.close();
			return temp == 1;
		} catch (Exception e) {
			return false;
		}
	}

	public static boolean updateGia(SanPham sp) throws SQLException {
		try {

			Connection connection = DBConnect.getConnection();
			String sql = "UPDATE SanPham SET gia = ?  WHERE idSP = ?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, sp.getIdSP());
			ps.setDouble(2, sp.getGia());
			int temp = ps.executeUpdate();
			connection.close();
			return temp == 1;

		} catch (Exception e) {
			return false;
		}
	}

	public static boolean updateSanPhamSoLuong(SanPham sp) {
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "UPDATE SanPham SET soLuong = ?  WHERE idSP = ?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setInt(1, sp.getSoLuong());
			ps.setString(2, sp.getIdSP());
			int temp = ps.executeUpdate();
			connection.close();
			return temp == 1;
		} catch (Exception e) {
			return false;
		}
	}

	public static boolean updateImgSanPham(SanPham sp) throws SQLException {
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "UPDATE SanPham SET img = ?  WHERE idSP = ?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, sp.getImg());
			ps.setString(2, sp.getIdSP());
			int temp = ps.executeUpdate();
			connection.close();
			return temp == 1;

		} catch (Exception e) {
			return false;
		}
	}

	public static boolean deleteSanPham(String idSP) throws SQLException {
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "DELETE FROM SanPham WHERE idSP = ?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, idSP);
			int temp = ps.executeUpdate();
			connection.close();
			return temp == 1;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public static boolean checkTenSP(String e) {
		boolean check = false;
		for (String s : listSanPham()) {
			if (e.trim().equalsIgnoreCase(s)) {
				check = true;
				break;
			}
		}
		return check;
	}

	public static ArrayList<String> listSanPham() {
		ArrayList<String> list = new ArrayList<String>();
		Connection con = DBConnect.getConnection();
		Statement state;
		try {
			state = (Statement) con.createStatement();
			ResultSet res = state.executeQuery("select tenSP from SanPham");
			while (res.next()) {
				list.add(res.getString("tenSP"));
			}
			con.close();
		} catch (SQLException e) {
			Logger.getLogger(SanPham.class.getName())
					.log(Level.SEVERE, null, e);
		}
		return list;
	}

	public static SanPham lookingSP(String IDSP) {

		try {
			Connection connection = DBConnect.getConnection();
			String sql = "select * from SanPham  where idSP=?";
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, IDSP);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				SanPham sp = new SanPham(rs.getString("idSP"),
						rs.getString("tenSP"), rs.getString("idCTSP"),
						rs.getLong("gia"), rs.getInt("soLuong"),
						rs.getString("idLoaiSP"), rs.getString("hangSX"),
						rs.getString("img"), rs.getString("src"));
				return sp;
			}
		} catch (Exception e) {
			System.err.println(e);
		}
		return null;
	}

	public static void main(String[] args) {
		String Id = "1";

		System.out.println(lookingforSanPham(Id).toString());
	}
}
