package web.java.utils;

public class Function {
	public static String getFormatPriceDefault(Float price) {
		return String.format("%1$,.0f", (double) price);
	}
	
	public static String getFormatRating(double price) {
		return String.format("%1$,.2f", price);
	}
}
