package collectionframework;

import java.time.LocalDate;

public class GenericMethodDemo {

	public static<T> void print(T[] a) {
		for(var v: a)
			System.out.println(v);
	}
	
	public static void main(String[] args) {
//		int [] a = {10, 20, 30}	//generics doesn't support standard data types only classes
//		print(a);	// error
		// instead use wrapper class to print using print()
		Integer [] a = {10, 20, 30};
		print(a);	// this works well and good
		String [] names = {"Java", "python", "Javascript"};
		LocalDate [] dob = {LocalDate.of(2024, 1, 1), LocalDate.of(2023, 12, 12)};
		print(names);
		print(dob);
	}

}
