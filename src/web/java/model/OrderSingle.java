package web.java.model;

import web.java.dao.ProductDAO;

public class OrderSingle {
	private int id;
	private int product;
	private float price;
	private int number;
	private String orderTotal;

	public OrderSingle(int id, int product, float price, int number, String orderTotal) {
		super();
		this.id = id;
		this.product = product;
		this.price = price;
		this.number = number;
		this.orderTotal = orderTotal;
	}
	
	public OrderSingle(int product, float price, int number) {
		super();
		this.product = product;
		this.price = price;
		this.number = number;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getProduct() {
		return product;
	}

	public void setProduct(int product) {
		this.product = product;
	}

	public float getPrice() {
		return price;
	}

	public String getFormatPrice() {
		return String.format("%1$,.0f", this.getPrice() * this.getNumber());
	}

	
	public String getFormatPriceStatistical() {
		return String.format("%1$,.0f", this.getPrice());
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public Product getProductById() {
		return new ProductDAO().getProductById(Integer.toString(getProduct()));
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public String getOrderTotal() {
		return orderTotal;
	}

	public void setOrderTotal(String orderTotal) {
		this.orderTotal = orderTotal;
	}

	@Override
	public String toString() {
		return "OrderSingle [id=" + id + ", product=" + product + ", price=" + price + ", number=" + number
				+ ", orderTotal=" + orderTotal + "]";
	}
	
	

}
