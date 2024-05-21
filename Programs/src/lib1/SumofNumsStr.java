package lib1;

public class SumofNumsStr {

	public static void main(String[] args) {

		String data = "90-10-60-40";
		String nums[] = data.split("-");
		
		int total = 0;
		for (String n: nums) {
			total += Integer.parseInt(n);
		}
		
		System.out.println(total);
}
	
}	
