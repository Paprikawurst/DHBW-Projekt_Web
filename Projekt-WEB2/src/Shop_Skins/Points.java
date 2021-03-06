package Shop_Skins;

import java.io.BufferedReader;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.HTTP;
import org.json.JSONException;
import org.json.JSONObject;

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
		StringBuffer jb = new StringBuffer();
		String line = null;
		try {
			BufferedReader reader = request.getReader();
			while ((line = reader.readLine()) != null)
				jb.append(line);
		} catch (Exception e) { /*report an error*/ }

		try {
			JSONObject jsonObject =  HTTP.toJSONObject(jb.toString());
		} catch (JSONException e) {
			// crash and burn
			throw new IOException("Error parsing JSON request string");
		}

		int points=Integer.parseInt(jb.substring(jb.indexOf(":")+1,jb.indexOf("}")));
		HttpSession session = request.getSession(true);
		String user=((String)session.getAttribute("email"));
		if(user!=null) {
		shopBean.addPoints(user, points);		
		}
	}

}
