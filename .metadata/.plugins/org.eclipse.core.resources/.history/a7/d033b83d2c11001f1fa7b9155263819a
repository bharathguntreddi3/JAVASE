package oop1;

class Account{
	private int acno;
	private String achname;
	private double balance;
	
	public Account(int no, String name) {
		this.acno = no;
		achname = name;
	}
	
	public Account(int acno, String achname, double balance) {
		super();
		this.acno = acno;
		this.achname = achname;
		this.balance = balance;
	}

	public void deposit(double amount) {
		this.balance += amount;
	}
	
	public void withdraw(double amount) {
		this.balance -= amount;
	}
	
	public double getBalance() {
		return this.balance;
	}
}

public class TestAccounts {

	public static void main(String[] args) {

		Account a = new Account(1, "bharath", 40000);
		a.deposit(30000);
		a.withdraw(10000);
		
		System.out.println(a.getBalance());
		
	}

}
