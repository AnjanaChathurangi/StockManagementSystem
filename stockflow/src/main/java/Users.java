public class Users {
	private String userID;
	private String name;
	private String email;
	private String userName;
	private String password;
	private String phone;
	private String type;

	public Users(String userID, String name, String email, String userName, String password, String phone,
			String type) {
		this.userID = userID;
		this.name = name;
		this.email = email;
		this.userName = userName;
		this.password = password;
		this.phone = phone;
		this.type = type;
	}

	public String getUserID() {
		return userID;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getUserName() {
		return userName;
	}

	public String getPassword() {
		return password;
	}

	public String getPhone() {
		return phone;
	}

	public String getType() {
		return type;
	}

}
