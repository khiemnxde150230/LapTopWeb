package web.java.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import web.java.model.Comment;
import web.java.utils.ConnectDB;

public class CommentDAO {
	Connection conn;
	PreparedStatement ps;
	ResultSet rs;

	public List<Comment> getAllComment() {
		List<Comment> comments = new ArrayList<Comment>();
		String query = "select * from comment";
		try {
			conn = new ConnectDB().getDBConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				comments.add(new Comment(rs.getInt(1), rs.getDouble(2), rs.getString(3), rs.getString(4), rs.getDate(5),
						rs.getInt(6), rs.getInt(7), rs.getString(8)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return comments;
	}

	public List<Comment> getAllCommentProduct(String id) {
		List<Comment> comments = new ArrayList<Comment>();
		String query = "select * from comment where rating_product_id = ?";
		try {
			conn = new ConnectDB().getDBConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				comments.add(new Comment(rs.getInt(1), rs.getDouble(2), rs.getString(3), rs.getString(4), rs.getDate(5),
						rs.getInt(6), rs.getInt(7), rs.getString(8)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return comments;
	}
	
	public List<Comment> getAllCommentByOrderTotal(String id) {
		List<Comment> comments = new ArrayList<Comment>();
		String query = "select * from comment where rating_order_id = ?";
		try {
			conn = new ConnectDB().getDBConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				comments.add(new Comment(rs.getInt(1), rs.getDouble(2), rs.getString(3), rs.getString(4), rs.getDate(5),
						rs.getInt(6), rs.getInt(7), rs.getString(8)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return comments;
	}

	public void addEvaluate(double rating, String comment, String image, Timestamp date, int user_id, int product_id,
			String order_id) {
		String query = "insert into comment(rating, comment, image, date, rating_user_id, rating_product_id, rating_order_id) values (?, ?, ?, ?, ?, ?, ?)";
		try {
			conn = new ConnectDB().getDBConnection();
			ps = conn.prepareStatement(query);
			ps.setDouble(1, rating);
			ps.setString(2, comment);
			ps.setString(3, image);
			ps.setTimestamp(4, date);
			ps.setInt(5, user_id);
			ps.setInt(6, product_id);
			ps.setString(7, order_id);
			ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
