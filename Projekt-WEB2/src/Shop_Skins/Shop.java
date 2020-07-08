package Shop_Skins;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Login_Register.Login_RegisterBean;

/**
 * Servlet implementation class Shop
 */
@WebServlet("/Shop")
public class Shop extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Shop() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Shop_Bean shopBean = (Shop_Bean) request.getAttribute("shopBean");
		
		if (shopBean == null) {
			shopBean = new Shop_Bean();
			request.setAttribute("registerBean", shopBean);
		}
		shopBean.setUser(request.getParameter("user"));
		shopBean.readPoints(request.getParameter("user"));
		if(shopBean.buySkin(request.getParameter("user"),request.getParameter("unboughtSkins")).equals("Erfolgreich eingetragen!")) {
			request.setAttribute("Message", "Kauf erfolgreich!");
			response.sendRedirect("Shop.jsp");
		} else {
			request.setAttribute("Message", "Zu wenige Punkte!");
            request.getRequestDispatcher("/Shop.jsp").forward(request, response);
		}
		
	}

}
