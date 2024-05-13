package oop1;

public class TestCounter {

	public static void main(String[] args) {

		Counter c;	// object reference
		
		c = new Counter(0);
		
		c.inc();	//public methods
		c.inc();
		c.dec();
		
//		c.value ++;	//Cannot access the value because the initialized value is private
	}

}
