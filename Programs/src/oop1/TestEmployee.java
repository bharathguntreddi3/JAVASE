package oop1;

public class TestEmployee {

	public static void main(String[] args) {

		Employee e;
		
		e = new Employee(null, 0);
		
		e.init("Bharath", 1200000);
		e.printData();
		e.setSalary(1200000);
		
		if(e.getSalary() > 1000000) {
			System.out.println("Fat Salary");
		}
	}

}
