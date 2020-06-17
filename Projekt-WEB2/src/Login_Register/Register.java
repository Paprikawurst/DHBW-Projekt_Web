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
		
		Login_RegisterBean registerBean = (Login_RegisterBean) request.getAttribute("registerBean");
		
		if (registerBean == null) {
			registerBean = new Login_RegisterBean();
			request.setAttribute("registerBean", registerBean);
		}
		
		registerBean.setEmail(request.getParameter("username"));
		registerBean.setPassword(request.getParameter("password"));
		
		if(registerBean.insertUser()) {
			request.setAttribute("Message", "You successfully registered!");
			request.getRequestDispatcher("/Login.jsp").forward(request, response);
		} else {
			request.setAttribute("Message", "User already exists!");
            request.getRequestDispatcher("/Login.jsp").forward(request, response);
		}
		
	}

}
