package web.java.controller.Product;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.java.dao.BrandDAO;
import web.java.dao.CategoryDAO;
import web.java.dao.CollectionDAO;
import web.java.dao.CommentDAO;
import web.java.dao.EventDAO;
import web.java.dao.Order;
import web.java.model.Comment;

/**
 * Servlet implementation class EvaluateServlet
 */
@WebServlet("/evaluate")
public class EvaluateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EvaluateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		
		String orderId = request.getParameter("orderId");
		
		int loginId = -1;
		Cookie[] cookies = request.getCookies();
		for (int i = 0; i < cookies.length; i++) {
			if ((cookies[i].getName()).compareTo("loginId") == 0) {
				loginId = Integer.parseInt(cookies[i].getValue());
			}
		}

		request.setAttribute("order", new Order().getOrderTotalById(orderId));
		request.setAttribute("orderSingles", new Order().getOrderSingleByOrderTotal(orderId));
		request.setAttribute("commentOrders", new CommentDAO().getAllCommentByOrderTotal(orderId));
		List<Comment> listComments = new CommentDAO().getAllCommentByOrderTotal(orderId);
//		for(Comment comment : listComments) {
//			System.out.println(comment.getProduct());
//		}
		request.setAttribute("saleMakeups", new CategoryDAO().getMakeupCate());
		request.setAttribute("events", new EventDAO().getAllEvent());
		request.setAttribute("brands", new BrandDAO().getAllBrand());
		request.setAttribute("categories", new CategoryDAO().getAllCategory());
		request.setAttribute("collections", new CollectionDAO().getAllCollection());
		request.getRequestDispatcher("/Page/evaluate.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		
		int productId = Integer.parseInt(request.getParameter("productId"));
		double rating = Double.parseDouble(request.getParameter("rating"));
		String comment = request.getParameter("comment");
		String orderId = request.getParameter("orderId");
		int loginId = -1;
		Cookie[] cookies = request.getCookies();
		for (int i = 0; i < cookies.length; i++) {
			if ((cookies[i].getName()).compareTo("loginId") == 0) {
				loginId = Integer.parseInt(cookies[i].getValue());
			}
		}
		
		Date date = new Date();
		Timestamp timestamp = new Timestamp(date.getTime());
		
		new CommentDAO().addEvaluate(rating, comment, "", timestamp, loginId, productId, orderId);

		request.setAttribute("order", new Order().getOrderTotalById(orderId));
		request.setAttribute("orderSingles", new Order().getOrderSingleByOrderTotal(orderId));
		request.setAttribute("commentOrders", new CommentDAO().getAllCommentByOrderTotal(orderId));
		request.setAttribute("saleMakeups", new CategoryDAO().getMakeupCate());
		request.setAttribute("events", new EventDAO().getAllEvent());
		request.setAttribute("brands", new BrandDAO().getAllBrand());
		request.setAttribute("categories", new CategoryDAO().getAllCategory());
		request.setAttribute("collections", new CollectionDAO().getAllCollection());
		request.getRequestDispatcher("/Page/evaluate.jsp").forward(request, response);
	}

}
