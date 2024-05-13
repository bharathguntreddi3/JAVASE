package Basics;

import java.util.Scanner;

public class AverageofNumbers {

	public static void main(String[] args) {
		
		Scanner s = new Scanner(System.in);
		
		int sum = 0;
		System.out.print("Enter any 5 Integers: ");
		for (int i = 1; i<=5; i++) {
			int n = s.nextInt();  
			sum = sum + n;
		}
		
		System.out.print("Average of the given 5 numbers: " + sum/5);
		
		s.close();
	}

}
