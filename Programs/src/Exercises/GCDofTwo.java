package Exercises;

import java.util.Scanner;

public class GCDofTwo {
	
//	public static void GCD(int first, int second) {
//		
//		if (second == 0) {
//			System.out.println(first);
//		}
//		else {
//			System.out.println(GCD(second, first%second));;
//		}
//	}

	public static void main(String[] args) {

		Scanner s = new Scanner(System.in);
		System.out.print("Enter the First Number: ");
		int first = s.nextInt();
		System.out.print("Enter the Second Number");
		int second = s.nextInt();
		for (int i=1; i<=first && i<=second; i++) {
			if(first%i == 0 && second%i == 0) {
				int gcd = i;
			}
		}
		
		System.out.print("GCD : ");
	}

}
