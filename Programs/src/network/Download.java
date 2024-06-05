package network;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.URL;

public class Download {

	public static void main(String[] args) throws Exception {
	 	URL urlobj = new URL("https://bharathguntreddi.onrender.com/assets/img/profile4.png");
		InputStream is = urlobj.openStream();
		FileOutputStream fo = new FileOutputStream("C:\\Users\\Hayan\\Pictures\\gb.jpg");
		int ch = is.read();
		while (ch != -1) {
			fo.write(ch);
			ch = is.read();
		}
		fo.close();
		is.close();
		System.out.println("Download completed!");
	}

}