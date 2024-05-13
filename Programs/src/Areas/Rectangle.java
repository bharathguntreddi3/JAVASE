package Areas;

import java.util.Scanner;

public class Rectangle {

	public static void main(String[] args) {

		Scanner s = new Scanner(System.in);
		
		System.out.print("Enter the Length of the Rectangle: ");
		double l = s.nextDouble();
		System.out.print("Enter the Breadth of the Rectangle: ");
		double b = s.nextDouble();
		
		double area = l * b;
		double perimeter = 2*(l+b);
		System.out.println("Area of the Rectangle: " + area);
		System.out.println("Perimeter of the Rectangle: "+ perimeter);
		s.close();
	}

}
