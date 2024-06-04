package oop2;

public class ExDemo {

	public static void main(String[] args) {

		String st = "12a";	//NumberFormatException
		String st1 = "0";	// ArithmeticException
		
		try {
			int n = Integer.parseInt(st1);		
			System.out.println(100/n);
		}
//		ex - object
//		catch(NumberFormatException ex) {
//			System.out.println("Invalid Number!");
//		}
//		catch(ArithmeticException ex) {
//			System.out.println("0 is Invalid Number!");
//		}
		catch(NumberFormatException | ArithmeticException ex) {
			System.out.println("Invalid Number!");	//multiple exception catching
		}
		
		
		System.out.println("The End");
	}

}