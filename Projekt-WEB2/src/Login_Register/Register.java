package Login_Register;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Register() {
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
		Login_RegisterBean registerBean = (Login_RegisterBean) request.getAttribute("registerBean");
		//Testen ob leer wenn nicht neu anlegen
		if (registerBean == null) {
			registerBean = new Login_RegisterBean();
			request.setAttribute("registerBean", registerBean);
		}
		//Testen ob leer wenn nicht neu anlegen
		registerBean.setEmail(request.getParameter("username"));
		registerBean.setPassword(request.getParameter("password"));
		//User regestrieren
		if(registerBean.insertUser()) {
			//Weiterleiten an Login mit Message Erfolg
			request.setAttribute("Message", "You successfully registered!");
			request.getRequestDispatcher("/Login.jsp").forward(request, response);
		} else {
			//Weiterleiten an Login mit Message Fehlschlag
			request.setAttribute("Message", "User already exists!");
			request.getRequestDispatcher("/Login.jsp").forward(request, response);
		}

	}

}
