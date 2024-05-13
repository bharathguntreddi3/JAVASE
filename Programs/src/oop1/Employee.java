package oop1;

public class Employee {

	public Employee(String name, int salary) {
		super();
		this.name = name;
		this.salary = salary;
	}

	private String name;
	private int salary;
	
	public void init(String n, int sal) {
		name = n;
		salary = sal;
	}
	
	public void printData() {
		System.out.println(name);
		System.out.println(salary);
	}
	
	public void setSalary(int sal) {
		salary = sal;
	}
	
	public int getSalary() {
		return salary;
	}
}
