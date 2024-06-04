package oop2;

import java.util.Scanner;

public class ExDemo1 {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		System.out.println("Enter Any 5 strings or Integers: ");
		int sum = 0;
		try {
			for(int i=0; i<5; i++) {
				String n = s.nextLine();
				int conv = Integer.parseInt(n);
				sum = sum + conv;
			}
			System.out.println("Sum of the input values:"+ sum);
		}
		catch(NumberFormatException ex) {
			System.out.println("Invalid Number!");
		}
		catch(ArithmeticException ex) {
			System.out.println("0 is Invalid Number!");
		}
		
		System.out.println("The End!");
		
		}
	}