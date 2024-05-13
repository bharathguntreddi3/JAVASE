package Exercises;

import java.util.Scanner;

public class Palindromes {

	public static void main(String[] args) {

		Scanner s = new Scanner(System.in);

		System.out.print("Enter the start Number: ");
		int start = s.nextInt();
		System.out.print("Enter the end Number: ");
		int end = s.nextInt();
		
		System.out.printf("Palindromes between %d and %d : ", start, end);
		for (int i=start; i<=end; i++) {
			int current = i, reversed = 0;
			while(current>0) {
				int rem = current % 10;
				reversed = reversed*10 + rem;
				current = current / 10;
			}
			if (i == reversed) {
				System.out.print(" " + i);	
			}
		}
		s.close();
	}

}
