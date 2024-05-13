package Basics;

public class Function_Demo {
	
	public static boolean isEven(int n) {
		return n%2 == 0;
	}
	
	public static void print(int a, int b) {
		
	}
	
	public static void ellipses(int ... values) {
//		(ellipses ... variable) can store any no. of arguments
//		this internally is an array and takes all the values into consideration
//		System.out.print(values.length); // gives length as 3
		for (int n : values) {
			System.out.println(n);
		}
	}
	
	public static void main(String[] args) {
		System.out.println(isEven(6));
		print(10,20);
		ellipses(10,20,30);
	}

}
