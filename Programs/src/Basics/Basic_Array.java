package Basics;

public class Basic_Array {

	public static void main(String[] args) {

		int a [] = {1, 2, 3, 4, 5, 6};
		
		for (int i=0; i < a.length; i++) {
			System.out.println(a[i]);
		}
		for (int k : a)	//enhanced for loop	
			System.out.println(k);	//Each value of the a is stored each time into k and updated to k
	}

}