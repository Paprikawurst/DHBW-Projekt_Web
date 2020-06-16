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
		
		Login_RegisterBean loginBean = (Login_RegisterBean) request.getAttribute("registerBean");
		
		if (loginBean == null) {
			loginBean = new Login_RegisterBean();
			request.setAttribute("registerBeann", loginBean);
		}
		
		loginBean.setEmail(request.getParameter("username"));
		loginBean.setPasswort(request.getParameter("password"));
		
		if(loginBean.logginUser()==true) {
			HttpSession session = request.getSession(true); // reuse existing
            // session if exist
            // or create one
			session.setAttribute("email", loginBean.getEmail());
			session.setMaxInactiveInterval(30); 
			request.getRequestDispatcher("/Home.jsp").forward(request, response);
		} else {
			request.setAttribute("Message", "Kombination aus Nutzername und Passwort falsch!");
            request.getRequestDispatcher("/Login.jsp").forward(request, response);
		}		
	}

}
