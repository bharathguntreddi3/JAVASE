package Basics;

import java.util.Scanner;

public class Month_Date {

	public static void main(String[] args) {

		Scanner s = new Scanner(System.in);
		
		System.out.print("Enter the Month: ");
		int m = s.nextInt();
		int d;
		switch(m) {
		case 4, 7, 9, 11 : d = 30; break;
		case 2:
			System.out.print("Enter the Year: ");
			int y = s.nextInt();
			if (y%4==0 && y%100!=0 || y%400==0) {
				d = 29; break;	//System.out.println(29);
			}
			else {
				d = 28; break;
			}
		default :
			d = 31; break;
		}
		System.out.println("The given month has " + d + " days");
		
		s.close();
	}

}
