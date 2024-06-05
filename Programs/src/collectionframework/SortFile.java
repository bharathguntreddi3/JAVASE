package collectionframework;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

public class SortFile {

	public static void main(String[] args) throws IOException {
		
		var path = Path.of("D:\\003_REPO\\Srikanth_Technologies_JAVASE\\names.txt");
		var lines = Files.readAllLines(path);	// gives all lines in the form of a list
		
		// sort method is present in the list interface so we use it to sort the data
		lines.sort(null);
		
		for(var line: lines)
			System.out.println(line);
	}

}
