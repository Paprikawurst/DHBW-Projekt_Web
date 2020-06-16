package Login_Register;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
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
        // TODO Auto-generated constructor stub
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
			request.setAttribute("registerBeann", registerBean);
		}
		
		registerBean.setEmail(request.getParameter("username"));
		registerBean.setPasswort(request.getParameter("password"));
		
		if(registerBean.insertUser()==true) {
			request.setAttribute("Message", "Regestrieren erfolgreich!");
			request.getRequestDispatcher("/Login.jsp").forward(request, response);
		} else {
			request.setAttribute("Message", "Nutzer schon vorhanden!");
            request.getRequestDispatcher("/Login.jsp").forward(request, response);
		}
		
	}

}
