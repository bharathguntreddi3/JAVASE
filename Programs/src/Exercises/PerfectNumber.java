package Exercises;

import java.util.Scanner;

public class PerfectNumber {

	public static void main(String[] args) {

		Scanner s = new Scanner(System.in);
		
		System.out.print("Enter a Number: ");
		int n = s.nextInt();
		int sum = 0;
		for (int i=1; i<=n/2; i++) {
			if (n%i == 0) {
				sum = sum + i;
			}
		}
		if(sum == n) {
			System.out.print("Perfect NUmber");
		}
		else {
			System.out.print("Not a Perfect Number");
		}
		
		s.close();
	}

}
