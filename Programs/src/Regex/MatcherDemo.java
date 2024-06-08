package Regex;

import java.util.regex.*;

public class MatcherDemo {

	public static void main(String[] args) {
		Pattern p = Pattern.compile("[a-z]+");
		Matcher m = p.matcher("123bbc4343pqr3433"); 
		while(m.find()) {
			System.out.println("start(): " + m.start());
			System.out.println("end(): "+ m.end());
			System.out.println("group(): " + m.group());
		}
		// pattern replacement 
		p = Pattern.compile("-+");
		m = p.matcher("----12345----");
		String output = m.replaceAll("*");
		System.out.println(output);
	}
}

//