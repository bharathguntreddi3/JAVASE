package oop1;

public class Counter {
	public Counter(int value) {
		super();
		this.value = value;
	}

	// instance variable
	private int value;
	
	// Methods
	public void inc() {
		value++;
	}
	 
	public void dec() {
		value--;
	}
}
