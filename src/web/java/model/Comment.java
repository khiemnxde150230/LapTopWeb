package web.java.model;

import java.util.Date;

import web.java.dao.Order;
import web.java.dao.UserDAO;

public class Comment {
	private int id;
	private double rating;
	private String comment;
	private String image;
	private Date datetime;
	private int user;
	private int product;
	private String order;

	public Comment(int id, double rating, String comment, String image, Date datetime, int user, int product,
			String order) {
		super();
		this.id = id;
		this.rating = rating;
		this.comment = comment;
		this.image = image;
		this.datetime = datetime;
		this.user = user;
		this.product = product;
		this.order = order;
	}

	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		this.order = order;
	}

	public void setRating(double rating) {
		this.rating = rating;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public double getRating() {
		return rating;
	}

	public void setRating(float rating) {
		this.rating = rating;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Date getDatetime() {
		return datetime;
	}

	public void setDatetime(Date datetime) {
		this.datetime = datetime;
	}

	public int getUser() {
		return user;
	}

	public void setUser(int user) {
		this.user = user;
	}
	
	public User getUserObject() {
		return new UserDAO().getUserById(String.valueOf(user));
	}
	
	public OrderTotal getOrderTotal() {
		return new Order().getOrderTotalById(order);
	}
	

	public int getProduct() {
		return product;
	}

	public void setProduct(int product) {
		this.product = product;
	}

	@Override
	public String toString() {
		return "Comment [id=" + id + ", rating=" + rating + ", comment=" + comment + ", image=" + image + ", datetime="
				+ datetime + ", user=" + user + ", product=" + product + ", order=" + order + "]";
	}

	
	
}
