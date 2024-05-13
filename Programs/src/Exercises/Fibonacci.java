package Exercises;

import java.util.Scanner;

public class Fibonacci {

	public static void main(String[] args) {

		Scanner s = new Scanner(System.in);
		
		int t1 = 0;
		int t2 = 1;
		int nextTerm = t1 + t2;
		System.out.println("Enter the range of the Fibanocci series: ");
		int n = s.nextInt();
		System.out.printf("%d %d", t1, t2);
		for (int i=3; i<=n; i++) {
			System.out.print(" " + nextTerm);
			t1 = t2;
			t2 = nextTerm;
			nextTerm = t1 + t2;
		}
		s.close();
	}

}
