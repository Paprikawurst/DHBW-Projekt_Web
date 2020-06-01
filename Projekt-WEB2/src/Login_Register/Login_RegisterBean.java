package Login_Register;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Serializable;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Login_RegisterBean implements Serializable {
    /**
     * 
     */
    private static final long serialVersionUID = 1L;
    private String email;
    private String passwort;

    public Login_RegisterBean() {
    }

    public Login_RegisterBean(String email, String passwort) {
        this.email = email;
        this.passwort = passwort;
    }

    public void register() {
        System.out.println(true);
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPasswort() {
        return passwort;
    }

    public void setPasswort(String passwort) {
        this.passwort = passwort;
    }

    public String hash() {
        return  BCrypt.hashpw(passwort);
    }

    public void dateiExistiert(File file) throws IOException {
        if (file.exists()) {
        } else {
            file.createNewFile();
        }
    }

    @SuppressWarnings("resource")
	public ArrayList<String> nutzerEinlesen(int anfang) throws IOException {
        ArrayList<String> user = new ArrayList<String>();
        File file = new File("user.txt");
        String line;
        dateiExistiert(file);
        BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
        while (null != (line = bufferedReader.readLine())) {
        	if(anfang==0) {
        		user.add((line.substring(0, line.indexOf('|') - 1)).trim());
        	} else {
        		user.add((line.substring(line.indexOf('|') + 2).trim()));
        	}     	
        }
        return user;
    }

    @SuppressWarnings("resource")
	public boolean nutzerEintragen() throws IOException {
        ArrayList<String> user = nutzerEinlesen(0);
        File file = new File("user.txt");
        PrintWriter pWriter = new PrintWriter(new FileWriter(file, true), true);
        if (user.contains(email)) {
            return false;
        } else {
            dateiExistiert(file);
            pWriter.println(email + " || " + this.hash());
            pWriter.flush();
            pWriter.close();
            return true;
        }
    }
    
    public boolean nutzerEinloggen() throws IOException {    	
    	ArrayList<String> user = nutzerEinlesen(0);
    	ArrayList<String> hashes = nutzerEinlesen(1);
    	if (user.contains(email)) {
    		int index=user.indexOf(email);
    		String hash=hashes.get(index);
            if(BCrypt.checkpw(passwort,hash)){
            	return true;
            } else {
            	return false;
            }
        } else {
        	return false;
        }
    }
    
    public boolean eingeloggt(HttpSession session,HttpServletRequest request,HttpServletResponse response) throws IOException {   	
    	if (session != null) {
           if (session.getAttribute("email") != null) {
             return true;
           } else {
              return false;
           }
        } else {
        	return false;
        }
    }
    
}
