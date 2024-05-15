package oop1;

public class TestCourse {

	public static void main(String[] args) {

		Course c1 = new Course("Power BI", 5000, 20);
		// Course c2 = new Course(); // Cannot assign empty parameters
		
		System.out.print(c1.netFee());
		
		System.out.println(Course.getTaxRate());
	}

}
