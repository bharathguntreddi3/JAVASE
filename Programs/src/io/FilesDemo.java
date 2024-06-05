package io;

import java.nio.file.Files;
import java.nio.file.Path;

public class FilesDemo {

	public static void main(String[] args) {
		Path p = Path.of("D:\\003_REPO\\Srikanth_Technologies_JAVASE\\names.txt");
		// path is an interface, of is the static method of the path interface
		// we cannot have an object for the path which is an interface
		System.out.println(p.getClass());
		System.out.println(Files.exists(p));
		
	}

}