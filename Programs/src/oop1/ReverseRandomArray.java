package oop1;

import java.util.Arrays;

public class ReverseRandomArray {

	public static void main(String[] args) {
		
		int a[] = new int[10];
		
		for (int i = 0 ; i<10; i++) {
//			System.out.println((int)(Math.random()*100));
			a[i] = a[i] + (int)(Math.random()*100);
		}
		System.out.println(Arrays.toString(a));
		
		for (int j = a.length-1; j>=0; j--) {
			System.out.print(a[j] + ", ");
		}
		
		
	}

}
