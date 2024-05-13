package Basics;

import java.util.Scanner;

public class Reverse_Array {

	public static void main(String[] args) {

		Scanner s = new Scanner(System.in);
		int a[] = new int [5];
		System.out.print("Enter the elements in the array: ");
		for (int i=0; i<a.length; i++) {
			a[i] = s.nextInt();
//			System.out.println(a[i]);
		}
		
//		int end =  a.length - 1;
//		
//		for (int start=0; start <= end; start++) {
//			int temp = a[start];
//			a[start] = a[end];
//			a[end] = temp;
//			end--;
//		}
//		
//		System.out.print("Reverse of the given Array: ");
//		for (int j=0; j<5; j++) {
//			System.out.print("\s" + a[j]);
//		}
		
		for (int i = a.length-1; i>=0; i--) {
			System.out.print("\s" + a[i]);
			
		}
		s.close();
	}

}
