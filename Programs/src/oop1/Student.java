package oop1;

public class Student {
	
	// constructor to store values
	public Student(String s_name, String course, int feePaid) {
		super();
		this.s_name = s_name;
		this.course = course;
		this.feePaid = feePaid;
	}

	private String s_name, course;
	private int feePaid;
	
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
