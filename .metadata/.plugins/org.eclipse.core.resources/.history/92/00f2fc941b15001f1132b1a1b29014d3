package oop1;

abstract class Workers {
	protected String name, desg;
	public Workers(String name, String desg) {
		this.name = name;
		this.desg = desg;
	}
	public String getDesg() {
		return this.desg;
	}
	public void setDesg(String desg) {
		this.desg = desg;
	}
	public String getName() {
		return this.name;
	}
	public abstract int getPay();
}

class RegularEmployee extends Workers {
	protected int salary;
	public RegularEmployee(String name, String desg, int salary) {
		this.salary = salary;
	}
	
	@Override
	public int getPay() {
		return salary;
	}
}


public class TestWorkers {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
