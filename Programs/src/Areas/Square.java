package Areas;

import java.util.Scanner;

public class Square {

	public static void main(String[] args) {

		Scanner s = new Scanner(System.in);
		
		System.out.print("Enter the side of the Square: ");
		Double side = s.nextDouble();
		
		double area = side * side;
		double perimeter = 4 * side; 
		System.out.println("Area of the Square: " + area);
		System.out.println("Perimeter of the Square: " + perimeter);
		s.close();
	}

}
