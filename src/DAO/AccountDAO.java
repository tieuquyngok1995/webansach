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

public class AccountDAO {
	public static Account lookingforUser(String Id) {

		try {
			Connection connection = DBConnect.getConnection();
			String sql = "select * from Account where Id=?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, Id);
			ResultSet rs = ps.executeQuery();
			Account account = new Account();
			while (rs.next()) {
				account.setAccountID(rs.getString("Id"));
				account.setAccountName(rs.getString("name"));
				account.setAccountEmail(rs.getString("email"));
				account.setAccountPass(rs.getString("passWord"));
				account.setAccountSex(rs.getString("sex"));
				account.setAccountPhone(rs.getString("phone"));
				account.setAccountAddress(rs.getString("address"));
				account.setLevel(rs.getInt("lever"));

			}
			connection.close();
			return account;
		} catch (Exception e) {
			Logger.getLogger(Account.class.getName())
					.log(Level.SEVERE, null, e);
		}
		return null;
	}

	public static ArrayList<Account> getListAccount() {
		Connection cons = DBConnect.getConnection();
		String sql = "SELECT * FROM Account";
		ArrayList<Account> list = new ArrayList<>();
		try {
			PreparedStatement ps = (PreparedStatement) cons
					.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Account account = new Account();
				account.setAccountID(rs.getString("Id"));
				account.setAccountName(rs.getString("name"));
				account.setAccountEmail(rs.getString("email"));
				account.setAccountPass(rs.getString("passWord"));
				account.setAccountSex(rs.getString("sex"));
				account.setAccountPhone(rs.getString("phone"));
				account.setAccountAddress(rs.getString("address"));
				account.setLevel(rs.getInt("lever"));
				list.add(account);
			}
			rs.close();
			ps.close();
			cons.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	public static void insertAccocunt(Account p) {
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "INSERT INTO account VALUES(?,?,?,?,?,?,?,?)";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, p.getAccountID());
			ps.setString(2, p.getAccountName());
			ps.setString(3, p.getAccountEmail());
			ps.setString(4, p.getAccountPass());
			ps.setString(5, p.getAccountSex());
			ps.setString(6, p.getAccountPhone());
			ps.setString(7, p.getAccountAddress());
			ps.setInt(8, p.getLevel());
			int temp = ps.executeUpdate();
			connection.close();
		} catch (Exception e) {
			Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE,
					null, e);
		}
	}

	public static boolean updateAccountName(Account c) throws SQLException {
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "UPDATE account SET name = ?  WHERE Id = ?";

			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, c.getAccountName());
			ps.setString(2, c.getAccountID());

			int temp = ps.executeUpdate();
			connection.close();
			return temp == 1;
		} catch (Exception e) {
			return false;
		}
	}

	public static boolean updateAccountEmail(Account c) throws SQLException {
		try {
			if (checkEmail(c.getAccountEmail())) {
				Connection connection = DBConnect.getConnection();
				String sql = "UPDATE account SET email = ?  WHERE Id = ?";
				PreparedStatement ps = connection.prepareCall(sql);
				ps.setString(1, c.getAccountEmail());
				ps.setString(2, c.getAccountID());
				int temp = ps.executeUpdate();
				connection.close();
				return temp == 1;

			}
			return false;
		} catch (Exception e) {
			return false;
		}
	}

	public static boolean updateAccountAddress(Account c) throws SQLException {
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "UPDATE account SET address = ?  WHERE Id = ?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, c.getAccountAddress());
			ps.setString(2, c.getAccountID());
			int temp = ps.executeUpdate();
			connection.close();
			return temp == 1;
		} catch (Exception e) {
			return false;
		}
	}

	public static boolean updateAccountPhone(Account c) throws SQLException {
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "UPDATE account SET phone = ?  WHERE Id = ?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, c.getAccountPhone());
			ps.setString(2, c.getAccountID());
			int temp = ps.executeUpdate();
			connection.close();
			return temp == 1;

		} catch (Exception e) {
			return false;
		}
	}

	public static boolean deleteAccount(String Id) throws SQLException {
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "DELETE FROM account WHERE Id = ?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, Id);
			int temp = ps.executeUpdate();
			connection.close();
			return temp == 1;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public static boolean checkEmail(String e) {
		boolean check = false;
		for (String s : listEmail()) {
			if (e.trim().equalsIgnoreCase(s)) {
				check = true;
				break;
			}
		}
		return check;
	}

	public static ArrayList<String> listEmail() {
		ArrayList<String> list = new ArrayList<String>();
		Connection con = DBConnect.getConnection();
		Statement state;
		try {
			state = (Statement) con.createStatement();
			ResultSet res = state.executeQuery("select email from Account");
			while (res.next()) {
				list.add(res.getString("email"));
			}
			con.close();
		} catch (SQLException e) {
			Logger.getLogger(Account.class.getName())
					.log(Level.SEVERE, null, e);
		}
		return list;
	}

	public static boolean checkId(String Id) {
		boolean check = true;
		Connection con = DBConnect.getConnection();
		String sql = "select * from Account where (id='" + Id + "')";
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
	public static boolean checkUser(String name) {
		boolean check = true;
		Connection con = DBConnect.getConnection();
		String sql = "select * from Account where (name='" + name + "')";
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

	public static boolean checkLogin(String email, String passWord) {
		boolean check = false;
		Connection con = DBConnect.getConnection();
		String sql = "select * from Account where (email='" + email
				+ "') and (passWord='" + passWord + "')";
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

	public static void main(String[] args) {
		// AccountDAO dao = new AccountDAO();
		//
		// dao.insertAccocunt(new Account("id" + 2, "account " + 1, "email " +
		// 1,
		// "sex " + 1, "Nam", "123", "address " + 1, 0));
		// System.out.println(dao.toString());
	}
}
