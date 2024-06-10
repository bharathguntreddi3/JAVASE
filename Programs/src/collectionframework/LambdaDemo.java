package collectionframework;

import java.util.Arrays;
import java.util.Comparator;

class LengthCompare implements Comparator<String> {

	@Override
	public int compare(String s1, String s2) {
		return s1.length() - s2.length();
	}
	
}

public class LambdaDemo {

	public static int compareByLength(String s1, String s2) {
		return s1.length() - s2.length();
	}
	
	public static void main(String[] args) {
		String names [] = {"Java", "Python", "C", "JavaScript", "SQL"};
		
//		Arrays.sort(names);
//		Arrays.sort(names, new LengthCompare());	// sort based on the length of the each string
		
//		// LAMBDA BLOCK
//		Arrays.sort(names, (s1, s2) -> {
//			return s1.length() - s2.length();
//		});

		
		
		// LAMBDA EXPRESSION
//		Arrays.sort(names, (s1, s2) -> s1.length() - s2.length());
		// lambda expressions here creates a class x and implements comparator and executes the given expression
		// instead of creating a class lambda itself is creating an object, class and extends the interface
		// lambda provides type inference
		
		// method reference
		Arrays.sort(names, LambdaDemo :: compareByLength);
		for(var n: names)
			System.out.println(n);
	}

}
