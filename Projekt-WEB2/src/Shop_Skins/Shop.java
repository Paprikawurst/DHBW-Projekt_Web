package Shop_Skins;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//ShopBean anlegen 
		Shop_Bean shopBean = (Shop_Bean) request.getAttribute("shopBean");
		//Testen ob leer wenn nicht neu anlegen
		if (shopBean == null) {
			shopBean = new Shop_Bean();
			request.setAttribute("registerBean", shopBean);
		}
		//Parameter Bean setzen
		shopBean.setUser(request.getParameter("user"));
		shopBean.myPoints(request.getParameter("user"));
		//Skin kaufen?
		if(shopBean.buySkin(request.getParameter("user"),request.getParameter("unboughtSkins")).equals("Erfolgreich eingetragen!")) {
			//Weiterleiten zur�ck zum Shop mit Message Erfolg
			request.setAttribute("MessageShop", "Kauf erfolgreich!");
			request.getRequestDispatcher("/Shop.jsp").forward(request, response);
		} else {
			//Weiterleiten zur�ck zum Shop mit Message Fehlschlag
			request.setAttribute("MessageShop", "Zu wenige Punkte!");
			request.getRequestDispatcher("/Shop.jsp").forward(request, response);
		}

	}

}
