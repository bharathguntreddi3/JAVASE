package Exercises;

import java.util.Scanner;

public class Factorial {

	public static void main(String[] args) {

		Scanner s = new Scanner(System.in);
		
		System.out.print("Enter a number to find it's factorial: ");
		double n = s.nextDouble();
		int fact = 1;
		if (n==0) {
			System.out.println("Factorial of 0: " + 0);
		}
		else{
			for(int i=1; i<=n; i++) {
				fact = fact * i; 
			}
			System.out.println("Factorial of " + n + ": " + fact);
		}
		
		s.close();
	}

}
