package oop1;

class Shape {
	protected int x, y;
	// x, y for square start points and for the circle center	
	public Shape(int x,int y) {
		this.x = x;
		this.y = y;
	}
	
	public void print() {
		System.out.println(this.x);
		System.out.println(this.y);
	}
	
	public int getX() {
		return this.x;
	}
	
	public int getY() {
		return this.y;
	}
}

class Circle extends Shape {
	private double radius;
	public Circle(int x, int y, double radius) {
		super(x, y);
		this.radius = radius;
	}
	
	@Override
	public void print() {
		super.print();
		System.out.println(this.radius);
	}
	
	public double getArea() {
		return Math.PI*this.radius*this.radius;
	}
	
}

class Square extends Shape {
	private double side;
	public Square(int x, int y, double side) {
		super(x, y);
		this.side = side;
	}
	
	@Override
	public void print() {
		super.print();
		System.out.println(this.side);
	}
	
	public double getArea() {
		return this.side*this.side;
	}
}

class Rectangle extends Shape {
	private double length, width;
	public Rectangle(int x, int y, double length, double width) {
		super(x, y);
		this.length = length;
		this.width = width;
	}
	
	
	@Override
	public void print() {
		super.print();
		System.out.println("Area of rectangle is length multiplied with the breadth");
		System.out.println(length);
		System.out.println(width);
	}
	
	
	public double getArea() {
		return this.length * this.width;
	}
}
public class TestShapes {

	public static void main(String[] args) {
		Shape s;
		s = new Circle(10, 20, 5);	//upcasting subclass to superclass
		// upcasting - subclass is stored in the superclass reference
		if(s instanceof Circle) {
			Circle c = (Circle) s;
		}
		else {
			Square sq = (Square) s;
		}
		
		if (s instanceof Circle c1) {
			// above two steps in if can be performed by only if
			System.out.println(c1.getArea());
		}

		Circle c;
//		c = s;	// error every circle is a shape but every shape is not a circle
		c = (Circle) s;	//downcasting from super to subclass
		
//		Square sq;
//		sq = (Square) s;	// once an object is casted it cannot be casted to other object
	}

}
