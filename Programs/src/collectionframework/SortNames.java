package collectionframework;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

public class SortNames {

	public static void main(String[] args) throws IOException {
		 var p = Path.of("D:\\003_REPO\\Srikanth_Technologies_JAVASE\\names.txt");
		 Files.lines(p)
		      .sorted()
		      .forEach(System.out::println);
	}

}