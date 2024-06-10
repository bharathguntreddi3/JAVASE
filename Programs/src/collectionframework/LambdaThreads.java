package collectionframework;

public class LambdaThreads {
	
	public static void printNumbers() {
		for(int i=1; i<=10; i++)
			System.out.println(i);
	}

	public static void main(String[] args) {
		
		Thread t1 = new Thread(() -> System.out.println("lambda expresson"));
		t1.start();
		
		Thread t2 = new Thread(() ->{
			for(int i=1; i<=10; i++)
				System.out.println(i);
		});
		t2.start();
		
		Thread t3 = new Thread(LambdaThreads :: printNumbers);
		t3.start();
	}

}
