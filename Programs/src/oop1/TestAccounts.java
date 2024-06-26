package oop1;

class Account{
	private int acno;
	private String achname;
	private double balance;
	private static int minBalance = 5000;
	
	public Account(int no, String name) {
		this.acno = no;
		this.achname = name;
	}
	
	public Account(int acno, String achname, double balance) {
		this.acno = acno;
		this.achname = achname;
		this.balance = balance;
	}

	public void deposit(double amount) {
		this.balance += amount;
	}
	
	public void withdraw(double amount) {
		if (this.balance-Account.minBalance >= amount)
			this.balance -= amount;
		else
			System.out.println("your balance is less than minimum balance to withdraw");
	}
	
	public double getBalance() {
		return this.balance;
	}
	
	public static int getMinBalance() {
		return Account.minBalance;
	}
}

public class TestAccounts {

	public static void main(String[] args) {

//		Account a = new Account(1, "bharath", 40000);
		Account b = new Account(2, "Afzal", 30000);
		System.out.println(Account.getMinBalance());
		System.out.println(b.getBalance());
		b.deposit(500);
		System.out.println(b.getBalance());
		
		b.withdraw(6000);
		
		System.out.println(b.getBalance());
//		
//		System.out.println(a.getBalance());
//		
//		System.out.println(Account.getMinBalance());
		
	}

}
