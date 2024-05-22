package lib1;

class Product {
	private String title;
	private int price;
	
	public Product(String title, int price) {
		super();
		this.title = title;
		this.price = price;
	}
	
	@Override
	public String toString() {
		return this.title + " - " + this.price;
	}

	@Override
	public boolean equals(Object obj) {
//		return true;	// obj is upcasted
		if (obj instanceof Product other) {
//			Product other = (Product) obj; // super class converted to subclass donwcasted
			return this.title.equals(other.title) && this.price == other.price;
		} 
		else{
			return false;
		}
	}
	@Override
	public int hashCode() {
		return this.price;
	}
}

public class TestProduct {

	public static void main(String[] args) {
		
		Product p1 = new Product("iPad Air", 50000);
		Product p2 = new Product("iPad Air", 50000);
		
		System.out.println(p1.toString());	//displays hashcode
		// without the toString overriding the object class toString the toString method prints the hashcode
		// after overriding toString can now print the values
		System.out.println(p1.equals(p2));	// comparing only the references hence it shows false
		// to overcome this we override the object class
		// after overrding the class we get true
		// methods must have the same signature
		System.out.println(p1.equals("ABC")); // String is taken in place of object
		// it cannot convert string to product check for the condition
		
	}

}
