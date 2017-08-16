package Model;

public class Account {
	private String accountID;
	private String accountName;
	private String accountEmail;
	private String accountPass;
	private String accountSex;
	private String accountPhone;
	private String accountAddress;
	private int level;

	public Account() {
	}

	public Account(String accountID, String accountName, String acocuntEmail,
			String accountPass, String accountSex, String accountPhone,
			String accountAddress, int level) {
		this.accountID = accountID;
		this.accountName = accountName;
		this.accountEmail = acocuntEmail;
		this.accountPhone = accountPhone;
		this.accountPass = accountPass;
		this.accountSex = accountSex;
		this.accountAddress = accountAddress;
		this.level = level;
	}

	@Override
	public String toString() {
		return "Account [accountID=" + accountID + ", accountName="
				+ accountName + ", acocuntEmail=" + accountEmail
				+ ", accountPass=" + accountPass + ", accountSex=" + accountSex
				+ ", accountPhone=" + accountPhone + ", accountAddress="
				+ accountAddress + ", level=" + level + "]";
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	public String getAccountID() {
		return accountID;
	}

	public void setAccountID(String accountID) {
		this.accountID = accountID;
	}

	public String getAccountName() {
		return accountName;
	}

	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}

	public String getAccountEmail() {
		return accountEmail;
	}

	public void setAccountEmail(String accountEmail) {
		this.accountEmail = accountEmail;
	}

	public String getAccountPhone() {
		return accountPhone;
	}

	public void setAccountPhone(String accountPhone) {
		this.accountPhone = accountPhone;
	}

	public String getAccountPass() {
		return accountPass;
	}

	public void setAccountPass(String accountPass) {
		this.accountPass = accountPass;
	}

	public String getAccountSex() {
		return accountSex;
	}

	public void setAccountSex(String accountSex) {
		this.accountSex = accountSex;
	}

	public String getAccountAddress() {
		return accountAddress;
	}

	public void setAccountAddress(String accountAddress) {
		this.accountAddress = accountAddress;
	}

}
