package oop1;

public class TestStudents {

	public static void main(String[] args) {

		Students s1 = new Students("Bharath", "JavaSE", 6000);
		
		s1.printDetails();
		
		System.out.println(s1.getCourse());
		
		System.out.println(s1.getFee());
		
		if(s1.getCourse()=="JavaSE") {
			System.out.println("Javase course is started on 30 April, 2024,");
		}
		
		if(s1.getFee()<7000) {
			System.out.println("The course is cheaper than full stack web development");
		}
	}

}
