package collectionframework;

import java.util.Arrays;

public class StreamFromArrays {

	public static void main(String[] args) {
		String [] names = {"Larry", "Scott",
				"Kevin", "Ben", "Joe","Mark"};
		
		Arrays.stream(names)
		      .filter(n -> n.length() > 3)
		      .sorted()
		      .forEach(System.out::println);
		      
		

	}

}