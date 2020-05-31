import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

public class Registrieren {
	Login_RegisterBean registerBean;
	String passwort;
	String email;
	
	 public Registrieren(Login_RegisterBean registerBean) {
		this.registerBean = registerBean;
		passwort=registerBean.getPasswort();
		email=registerBean.getEmail();
	}

	public void hash() {
		    passwort=BCrypt.hashpw(passwort);
		  }
		  
		  public void dateiExistiert(File file) throws IOException {
			  if(file.exists()) {           
		      } else {
		        file.createNewFile(); 
		      }
		  }
		  
		  public ArrayList<String> nutzerEinlesen() throws IOException {
		    ArrayList <String> user = new ArrayList<String>();
		    File file = new File("user.txt");
		    PrintWriter pWriter = new PrintWriter(new FileWriter(file, true), true);        
		    BufferedReader bufferedReader = null;
		    String line;
		    dateiExistiert(file);
		    bufferedReader = new BufferedReader(new FileReader(file)); 
		    while (null != (line = bufferedReader.readLine())) { 
		       user.add(line.substring(0,line.indexOf('|')-1));     
		    }
		    return user;    
		  }
		  
		  public boolean nutzerEintragen() throws IOException {
		    ArrayList <String> user = nutzerEinlesen();
		    File file = new File("user.txt");
		    PrintWriter pWriter = new PrintWriter(new FileWriter(file, true), true);        
		    BufferedReader bufferedReader = null;
		      if(user.contains(email)) {
		    	  return false;
		      } else {
		    	  dateiExistiert(file);
		        pWriter.println(email + " || " + passwort);
		        pWriter.flush();
		        pWriter.close();  
		        return true;
		      }
		   
		  }
		    
		  public boolean registrieren() throws IOException {
			hash();
			nutzerEinlesen();
			return nutzerEintragen();
		  } 
}
