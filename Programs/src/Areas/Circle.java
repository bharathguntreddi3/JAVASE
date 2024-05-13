package Areas;

import java.util.Scanner;

public class Circle {

	public static void main(String[] args) {
		// scanner to take input radius from the user
		Scanner s = new Scanner(System.in);
		
		System.out.print("Enter the radius of the circle: ");
		double r = s.nextDouble();	//read the radius from the scanner in the required format
		double pi = 3.14;
		double area = pi*r*r;
		System.out.println("Area of the Circle: " + area);
		double circumference = 2*pi*r;
		System.out.println("Circumference of the Circle: " + circumference);
		
		
		s.close();
	}

}
