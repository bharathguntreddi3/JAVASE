package Areas;

import java.util.Scanner;

public class Triangle {

	public static void main(String[] args) {

		Scanner s = new Scanner(System.in);
		
		System.out.print("Enter the Base of the Triangle: ");
		Double b = s.nextDouble();
		System.out.print("Enter the height of the Triangle: ");
		Double h = s.nextDouble();
		
		double area = (b*h)/2;
		System.out.println("Area of the Triangle: " + area);
		s.close();
	}

}
