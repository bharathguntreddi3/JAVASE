package collectionframework;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.TreeMap;

public class ListCustomers {

	public static void main(String[] args) throws IOException {
		
		var lines = Files.readAllLines(Path.of("D:\\003_REPO\\Srikanth_Technologies_JAVASE\\customers.txt"));
		
		var customers = new TreeMap<String, String>();
		
		for(var line: lines) {
			var parts = line.split(",");
			customers.put(parts[0], parts[1]);
		}
		
		for(var name: customers.keySet()) {
			System.out.printf("%-20s   %-10s\n", name, customers.get(name));
		}
	}

}



//Assume a file students.txt with studentname, dob display student name followed by age in years