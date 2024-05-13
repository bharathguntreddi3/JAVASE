package Basics;

import java.util.Scanner;

public class Factors_of_Number {

	public static void main(String[] args) {

		Scanner s = new Scanner(System.in);
		
		System.out.print("Enter a number to find it's fatcors: ");
		int n = s.nextInt();
		System.out.print("Factors for " + n + " are: ");
		for (int i = 1; i <= Math.abs(n); i++) {
			if (i == 0) {
				continue;
			}
			else {
				if (n%i == 0) {
					System.out.print(i + " ");
				}
			}
			
		}
		s.close();
		
	}

}
