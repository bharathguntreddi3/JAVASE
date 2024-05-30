package oop2;

public class CheckedUnchecked {

	public static void main(String[] args) throws InterruptedException {

		// Unchecked - not mandatory(can be ignored)
		int v = Integer.parseInt("123");
		
		//checked - Mandatory(cannot be ignored)
//		Thread.sleep(100);	// throws error
		
//		can be handled using try catch
//		try {
//			Thread.sleep(100);
//		} catch (InterruptedException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
		Thread.sleep(100);	// handle using try catch or throw/propagate it to the main using throws
	}

}