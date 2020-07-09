package Shop_Skins;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Skins
 */
@WebServlet("/Skins")
public class Skins extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Skins() {
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
		shopBean.myPoints(request.getParameter("user"));
		
		shopBean.setSkin(request.getParameter("user"),request.getParameter("game"),request.getParameter("activeSkin"));
		response.sendRedirect("Shop.jsp");
	}

}
