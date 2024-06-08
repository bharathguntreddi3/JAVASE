package Regex;

import java.util.Scanner;
import java.util.regex.Pattern;

public class MobileNumber {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		System.out.print("Enter mobile number : ");
		String mobile = s.nextLine();
 // 	other way is: mobile.matches("^\\d{10}$")
		if (Pattern.matches("^\\d{10}$", mobile)) 
			System.out.println("Valid mobile number!");
		else
			System.out.println("Invalid mobile number!");
	}
}