package Regex;

import java.util.Scanner;
import java.util.regex.Pattern;

public class DisplayNumbers {

	public static void main(String[] args) {
//		accept a string and display all the numbers in the string 
		Scanner s = new Scanner(System.in);
		System.out.print("Enter a string with numbers: ");
		String str = s.nextLine();
		
		Pattern p = Pattern.compile("\\D");
		String[] items=p.split(str);
		for(String s1 : items)
			System.out.print(s1);
		}

	//		System.out.println(str);
	}
