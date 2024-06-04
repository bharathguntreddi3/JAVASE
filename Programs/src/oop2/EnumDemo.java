package oop2;

import java.time.Month;

enum PaymentMode {
	CASH, CARD, UPI
}

public class EnumDemo {

	public static void main(String[] args) {

		PaymentMode payMode;
		// Access the enumerated CARD, CASH, UPI options from the enum PaymentMode
		payMode = PaymentMode.CARD;
		
		if(payMode == PaymentMode.CASH);
	}

}
