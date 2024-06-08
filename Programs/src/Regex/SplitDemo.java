package Regex;

import java.util.regex.Pattern;

public class SplitDemo {

	public static void main(String[] args) {
		Pattern p = Pattern.compile("\\d");
		String[] items=p.split("one9two4three7four1five");
		for(String s : items)
			System.out.println(s);
	}
}