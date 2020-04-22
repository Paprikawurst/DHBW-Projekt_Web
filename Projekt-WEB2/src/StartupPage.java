import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

@WebServlet(value = "/")
public class StartupPage extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
          var a = resp.getWriter();
          a.println("<html>");
          a.println("<head> <title> hallo </title> </head>");
          a.println("<body>");
          a.println("<a href='JspTest.jsp'>JSP-Seite</a>");
          a.println("test1 <br>");
          a.println(new Date());
          a.println("</body>");
          a.println("</html>");
    }
}