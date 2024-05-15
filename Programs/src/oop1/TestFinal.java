package oop1;

class FinalDemo {
//	assign value at declaration or before the constructor
	private final int RATE; // can be assigned only once
	
	public FinalDemo() {
		RATE = 10;
	}
	public void m1() {
		//RATE = 20;	//can be assigned only once
	}
}

public class TestFinal {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
