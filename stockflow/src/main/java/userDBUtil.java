import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class userDBUtil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	// login validation
	public static boolean validate(String username, String password) {

		try {
			con = connect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from user where UserName='" + username + "' and Password='" + password + "'";
			rs = stmt.executeQuery(sql);

			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

	public static List<Users> getUser(String userName) {

		ArrayList<Users> user = new ArrayList<>();

		try {

			con = connect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from user where UserName='" + userName + "'";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				String id = rs.getString(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String username = rs.getString(4);
				String password = rs.getString(5);
				String phone = rs.getString(6);
				String type = rs.getString(7);

				Users u = new Users(id, name, email, username, password, phone, type);
				user.add(u);
			}

		} catch (Exception e) {

		}

		return user;
	}

//retrieve user details by ID
	public static List<Users> getUserDetails(String id) {
		ArrayList<Users> users = new ArrayList<>();

		try {
			con = connect.getConnection();
			stmt = con.createStatement();

			String sql = "SELECT * FROM user WHERE UserID = '" + id + "'";
			rs = stmt.executeQuery(sql);

			if (rs.next()) {
				String ID = rs.getString(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String uname = rs.getString(4);
				String pwd = rs.getString(5);
				String phone = rs.getString(6);
				String type = rs.getString(7);

				Users u = new Users(ID, name, email, uname, pwd, phone, type);
				users.add(u);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return users;
	}

//retrieve all user details
	public static List<Users> listUserDetails() {
		ArrayList<Users> users = new ArrayList<>();

		try {
			con = connect.getConnection();
			stmt = con.createStatement();

			String sql = "Select * From user";
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String ID = rs.getNString(1);
				String name = rs.getNString(2);
				String email = rs.getNString(3);
				String uname = rs.getNString(4);
				String pwd = rs.getNString(5);
				String phone = rs.getNString(6);
				String type = rs.getNString(7);
				Users u = new Users(ID, name, email, uname, pwd, phone, type);
				users.add(u);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return users;
	}

	public static boolean insertuser(String userID, String name, String email, String userName, String password,
			String phone, String type) {

		boolean isSuccess = false;

		try {
			con = connect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into user(UserID,Name,email,UserName,Password,PhoneNumber,Type) values ('" + userID
					+ "','" + name + "','" + email + "','" + userName + "','" + password + "','" + phone + "','" + type
					+ "')";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

	public static boolean updateuser(String id, String name, String email, String userName, String password,
			String phone, String type) {

		boolean isSuccess = false;

		try {
			con = connect.getConnection();
			stmt = con.createStatement();
			String sql = "update user set Name = '" + name + "',email = '" + email + "',UserName = '" + userName
					+ "',Password = '" + password + "',PhoneNumber = '" + phone + "',Type = '" + type
					+ "' where UserID = '" + id + "' ";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

	public static boolean deleteuser(String id) {

		boolean isSuccess = false;

		try {
			con = connect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from user where UserID  = '" + id + "'";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

}
