package Shop_Skins;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Points
 */
@WebServlet("/Points")
public class Points extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Points() {
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
		int points;
		String name;
		String game;
		//ShopBean anlegen 
		Shop_Bean shopBean = (Shop_Bean) request.getAttribute("shopBean");
		//Testen ob leer wenn nicht neu anlegen
		if (shopBean == null) {
			shopBean = new Shop_Bean();
			request.setAttribute("registerBean", shopBean);
		}
		//Parameter Bean setzen
		name=(request.getParameter("User"));
		points=shopBean.myPoints(name)+Integer.parseInt(request.getParameter("Points"));
		System.out.println(points);
		game=(request.getParameter("Game"));
		
		shopBean.addPoints(name, game, points);
		response.sendRedirect("CatchBlock.jsp");
	}

}
