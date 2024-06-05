package collectionframework;

import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;
import java.util.TreeSet;

public class SortedNamesUntil {

	public static void main(String[] args) throws IOException {
		// give all names until end is given and write all the names to names.txt in sorted order
		
		var names = new TreeSet<String>();
		Scanner s = new Scanner(System.in);

		System.out.println("Enter a Strings and type END to stop: ");

		while(true) {
			var name = s.nextLine();
			if(name.equals("END"))
				break;
			names.add(name);
		}
		
		System.out.println(names);
		
		try(var fw = new FileWriter("D:\\003_REPO\\Srikanth_Technologies_JAVASE\\collsortnames.txt")){
			for(var sname: names) {
				fw.write(sname + "\n");
			}
			System.out.println("Success...");
		}
		s.close();
	}

}
