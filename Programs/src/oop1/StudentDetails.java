package oop1;

class Students {
	
//	constructor to store values
	public Students(String s_name, String course, int feePaid) {
		super();
		this.s_name = s_name;
		this.course = course;
		this.feePaid = feePaid;
	}

	private String s_name, course;
	private int feePaid;
	
	public Students(String n, String c) {
		s_name = n;
		course = c;
	}
	
	public void printDetails() {
		System.out.println(s_name);
		System.out.println(course);
		System.out.println(feePaid);
	}
	
	public String getCourse() {
		return course;
	}
	
	public int getFee() {
		return feePaid;
	}
}


public class StudentDetails {

	public static void main(String[] args) {

		Students s1 = new Students("Bharath", "JavaSE", 6000);
		Students s2 = new Students("John", "FSWD", 7000);
		
		s1.printDetails();
		s2.printDetails();		
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
