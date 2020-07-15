package Login_Register;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
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
		//LoginRegisterBean anlegen 
		Login_RegisterBean loginBean = (Login_RegisterBean) request.getAttribute("registerBean");
		//Testen ob leer wenn nicht neu anlegen
		if (loginBean == null) {
			loginBean = new Login_RegisterBean();
			request.setAttribute("registerBean", loginBean);
		}
		//Parameter Bean setzen
		loginBean.setEmail(request.getParameter("username"));
		loginBean.setPassword(request.getParameter("password"));
		//User Einloggen
		if(loginBean.loginUser()) {
			//Wenn Erfolg Session setzen
			HttpSession session = request.getSession(true);
			session.setAttribute("email", loginBean.getEmail());
			session.setMaxInactiveInterval(300); 
			//Weiterleiten an neue Seite
			response.sendRedirect("Games.jsp");
		} else {
			//Bei Fehler mit Meldung an Login zurück
			request.setAttribute("MessageLoginRegister", "Wrong Username or Password!");
			request.getRequestDispatcher("/Login.jsp").forward(request, response);
		}		
	}

}
