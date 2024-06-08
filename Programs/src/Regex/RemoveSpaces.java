package Regex;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.regex.*;
	

public class RemoveSpaces {

	public static void main(String[] args) throws Exception {
//		accept a file and replace one or more spaces with single space
		var fr = new FileReader("D:\\003_REPO\\Srikanth_Technologies_JAVASE\\namespaces.txt");
		var br = new BufferedReader(fr);
		Pattern p;
		Matcher m;
		
		String line;
		
		while(true) {
			line = br.readLine();
			if(line == null)
				break;
			else
				p = Pattern.compile(" +");
				m = p.matcher(line);
				String output = m.replaceAll(" ");
				System.out.println(output);
		}
		
		br.close();fr.close();
	}

}
