package web.java.controller.Product;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import web.java.dao.BrandDAO;
import web.java.dao.CategoryDAO;
import web.java.dao.CollectionDAO;
import web.java.dao.EventDAO;
import web.java.dao.ProductDAO;
import web.java.model.Cart;
import web.java.model.CartItem;

/**
 * Servlet implementation class RemoveProductCartServlet
 */
@WebServlet("/removeProductInCart")
public class RemoveProductCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RemoveProductCartServlet() {
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

		String productId = request.getParameter("productId");
		int loginId = 0;

		Cookie[] cookies = request.getCookies();
		for (int i = 0; i < cookies.length; i++) {
			if ((cookies[i].getName()).compareTo("loginId") == 0) {
				loginId = Integer.parseInt(cookies[i].getValue());
			}
		}

		HttpSession session = request.getSession(false);
		Cart cart = ((Cart) session.getAttribute("cart")) != null ? (Cart) session.getAttribute("cart")
				: new Cart(loginId);
		cart.removeToCart(Integer.parseInt(productId));
		session.setAttribute("cart", cart);

//		request.setAttribute("events", new EventDAO().getAllEvent());
//		request.setAttribute("brands", new BrandDAO().getAllBrand());
//		request.setAttribute("categories", new CategoryDAO().getAllCategory());
//		request.setAttribute("collections", new CollectionDAO().getAllCollection());
//		request.setAttribute("productDetail", new ProductDAO().getProductById(productId));
//		request.setAttribute("listImages", new ProductDAO().getProductById(productId).getListImg());
		
		response.sendRedirect("cart");			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
