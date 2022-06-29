package web.java.AdminController.Statistical;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.java.dao.Order;
import web.java.dao.UserDAO;
import web.java.utils.Function;

/**
 * Servlet implementation class StatisticalSingleProduct
 */
@WebServlet("/admin/stcalList")
public class StatisticalSingleProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StatisticalSingleProduct() {
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
		
		//request.setAttribute(, response);
		request.setAttribute("users", new UserDAO().getAllUser());
		request.setAttribute("userTops", new UserDAO().getUserByTotalDesc());
		request.setAttribute("productUnitStatictical", new Order().getSingleProductStatictical());
		request.setAttribute("totalOrders", new Order().getSumOrderNumber());
		request.setAttribute("revenueAll", Function.getFormatPriceDefault(new UserDAO().revenueTotal()));
		System.out.println(new UserDAO().getUserByTotalDesc());
		request.getRequestDispatcher("../Admin/template/statistical/SingleProductStatistical.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
