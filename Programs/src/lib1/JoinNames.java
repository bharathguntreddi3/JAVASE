package lib1;

import java.util.Scanner;
import java.util.StringJoiner;

public class JoinNames {

	public static void main(String[] args) {

//		StringJoiner names = new StringJoiner(" : ");
//		Scanner s = new Scanner(System.in);
		// same as below
		var names = new StringJoiner(" : ");
		var s = new Scanner(System.in);

		
		while(true) {
			System.out.print("Enter the name [end to stop] :");
//			String name = s.nextLine(); //same as below
			var name = s.nextLine();
			
			if(name.equals("end")) {
				break;
			}
			names.add(name);
		}
		
		System.out.println(names);
		
		s.close();
	}

}
