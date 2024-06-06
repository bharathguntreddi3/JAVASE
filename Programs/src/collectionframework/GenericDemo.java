package collectionframework;

import java.util.ArrayList;

public class GenericDemo {

	public static void main(String[] args) {
		
		var names = new ArrayList();
		
		// below didn't mention what data types of object it has to store like String or Integer
		names.add("Abc");	// String
		names.add(10);	// Integer
		names.add("pqr");
		
		int n = (Integer) names .get(0);
		
		var coll = new ArrayList<String>();	// this says you can only have strings 
//		coll.add(20);// shows error it doesn't add integer only string 
		coll.add("First");
		
		String s = coll.get(0);
	}

}
