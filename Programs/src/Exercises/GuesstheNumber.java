package Exercises;

import java.util.Scanner;

public class GuesstheNumber {

	public static void main(String[] args) {

		Scanner s = new Scanner(System.in);
		System.out.println("!!! Guess The Number Game !!! ");
		System.out.println("Range: 1 to 25");
		int min = 1;
		int max= 25;
		int rnum = (int)(Math.random()*(max-min+1)+min);
		System.out.println(rnum);

		
		for (int i=1; i<=3; i++) {
			System.out.print("Guess the Number: ");
			int gn = s.nextInt();
			if (gn == rnum) {
				System.out.println("!!! Congratulations you have won the Game !!!");
				break;
			}
			else {
				System.out.println("The number you have guessed does not match.");
				System.out.println("You have " + (3-i) + " chances left");
			}
		}
	}

}
