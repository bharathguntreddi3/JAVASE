package Exercises;

import java.util.Scanner;

public class LargestofTen {

	public static void main(String[] args) {

		Scanner s = new Scanner(System.in);
		
		int n, largest=0;
		System.out.print("Enter the Elements to find the largest element: ");
		for (int i=1; i<=10; i++) {
			n = s.nextInt();
			if (n > largest) {
				largest = n;
			}
		}
		
		System.out.print("Largest Element: " + largest); 
		
		s.close();
	}

}
