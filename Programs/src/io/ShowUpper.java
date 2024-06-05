package io;

import java.io.FileReader;

public class ShowUpper {

	public static void main(String[] args) throws Exception {
		 FileReader fr = new FileReader("D:\\003_REPO\\Srikanth_Technologies_JAVASE\\names.txt");
		 int ch;
		 
		 while(true) {
			 ch = fr.read();
			 if(ch == -1)  // EOF
				 break;
			 
			 if(ch >= 65 && ch <= 90)    // Uppercase 
				 System.out.println((char)ch);
		 }

		 fr.close();
	}

}