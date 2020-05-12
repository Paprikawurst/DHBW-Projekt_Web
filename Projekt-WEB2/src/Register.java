

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
		ArrayList <String> user = new ArrayList<String>();
		File file = new File("user.txt");
		PrintWriter pWriter = new PrintWriter(new FileWriter(file, true), true);				
		BufferedReader bufferedReader = null;
		String line;
		String email=request.getParameter("username");
		String passwort=request.getParameter("password");
		passwort=BCrypt.hashpw(passwort);
		if(file.exists()) {	
			bufferedReader = new BufferedReader(new FileReader(file)); 
		  while (null != (line = bufferedReader.readLine())) { 
			  user.add(line.substring(0,line.indexOf('|')-1))	;		  
		  }		  
		  for(String us : user) {
			  if(us.equals(email)) {
				  RequestDispatcher dispatcher = request.getRequestDispatcher ( "Login.jsp" );
			      dispatcher.forward ( request, response );
			  }
		  }
	      pWriter.println(email + " || " + passwort);
	      pWriter.flush();
		  pWriter.close();			
		} else {
			file.createNewFile();
			if(file.exists()) {	
			  while (null != (line = bufferedReader.readLine())) { 
				  user.add(line.substring(0,line.indexOf('|')-1))	;		  
			  }		  
			  for(String us : user) {
				  if(us.equals(email)) {
					  RequestDispatcher dispatcher = request.getRequestDispatcher ( "Login.jsp" );
				      dispatcher.forward ( request, response );
				  }
			  }
		      pWriter.println(email + " || " + passwort);
		      pWriter.flush();
			  pWriter.close();	
			}
		}		
	}

}
