package web.java.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.java.dao.BrandDAO;
import web.java.dao.CategoryDAO;
import web.java.dao.CollectionDAO;
import web.java.dao.EventDAO;
import web.java.dao.ProductDAO;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/search")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
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
		
		request.setAttribute("key", request.getParameter("key"));
		request.setAttribute("listSearch", new ProductDAO().search(request.getParameter("key")));
		request.setAttribute("topfiveproducts", new ProductDAO().searchtopfiveproducts(request.getParameter("key")) );
		request.setAttribute("categorySames", new CategoryDAO().getCategorySames(new CategoryDAO().getCollectionNameById(request.getParameter("id"))));
		request.setAttribute("category", new CategoryDAO().getCategoryNameByIdRandom(request.getParameter("id")));
		request.setAttribute("products", new ProductDAO().getProductByCategoryIdRandom(request.getParameter("id")));
		request.setAttribute("saleMakeups", new CategoryDAO().getMakeupCate());
		request.setAttribute("events", new EventDAO().getAllEvent());
		request.setAttribute("brands", new BrandDAO().getAllBrand());
		request.setAttribute("categories", new CategoryDAO().getAllCategory());
		request.setAttribute("collections", new CollectionDAO().getAllCollection());

		request.getRequestDispatcher("/Page/SearchProduct.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
