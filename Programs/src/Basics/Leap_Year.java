package Basics;

import java.util.Scanner;

public class Leap_Year {

	public static void main(String[] args) {
		//Scanner takes input from the keyboard
		Scanner s = new Scanner(System.in);
		
		System.out.print("Enter a Year: ");
		int year = s.nextInt();	//read int from scanner
		
		if (year % 4 == 0) {
			System.out.println("It's a Leap Year");
		}
		else {
			System.out.println("It's not a Leap Year");
		}
		
		s.close();
	}

}
