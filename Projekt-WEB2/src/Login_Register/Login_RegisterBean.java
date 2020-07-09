package Login_Register;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Serializable;
import java.util.HashMap;

public class Login_RegisterBean implements Serializable {

    private static final long serialVersionUID = 1L;
    private String email;
    private String password;

    public Login_RegisterBean() {
    }

    public Login_RegisterBean(String email, String password) {
        this.email = email;
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String hash() {
        return  BCrypt.hashpw(password);
    }

    public void fileExists(File file)  {
            try {
            	if (file.exists()) {
                } else {
				file.createNewFile();
                }
			} catch (IOException e) {
				System.out.println("Fehler beim Erstellen der Datei!");
		}
    }

	public HashMap<String, String> readUser() {
		HashMap<String, String> user = new HashMap<String, String>();
		try {
	        File file = new File("user.txt");
	        String line;
	        fileExists(file);
	        BufferedReader bufferedReader;
			bufferedReader = new BufferedReader(new FileReader(file));
	        while (null != (line = bufferedReader.readLine())) {
        		user.put((line.substring(0, line.indexOf('|'))).trim(),(line.substring(line.indexOf('|') + 2).trim()));  	
	        }
	        bufferedReader.close();        
		} catch (FileNotFoundException e) {	
			System.out.println("Es ist ein Fehler mit der User-Datei aufgetreten!");
			return user;
		} catch (IOException e) {
			System.out.println("Es ist ein Fehler mit der User-Datei aufgetreten!");
			e.printStackTrace();
			return user;
		}
		return user;
    }

	public boolean insertUser()  {
    	HashMap<String, String> user;
		try {
			user = readUser();
			File file = new File("user.txt");
	        PrintWriter pWriter = new PrintWriter(new FileWriter(file, true), true);
	        if (user.containsKey(email)) {
	        	pWriter.close();
	            return false;
	        } else {
	        	fileExists(file);
	            pWriter.println(email + "||" + this.hash());
	            pWriter.flush();
	            pWriter.close();
	            File file2 = new File("points.txt");
	            fileExists(file2);
		        PrintWriter pWriter2 = new PrintWriter(new FileWriter(file2, true), true);
		        pWriter2.println(email + "||0");
	            pWriter2.flush();
	            pWriter2.close();
	            File file3= new File("activeskins.txt");
	            fileExists(file3);
		        PrintWriter pWriter3 = new PrintWriter(new FileWriter(file3, true), true);
		        pWriter3.println(email + "||Snake/Default");
		        pWriter3.println(email + "||CatchBlock/Default");
		        pWriter3.flush();
	            pWriter3.close();
	            File file4= new File("purchases.txt");
	            fileExists(file4);
		        PrintWriter pWriter4 = new PrintWriter(new FileWriter(file4, true), true);
		        pWriter4.println(email + "||Default");
		        pWriter4.flush();
	            pWriter4.close();
	            return true;
	        }
		} catch (IOException e) {
			System.out.println("Es ist ein Fehler mit der User-Datei aufgetreten!");
			return false;
		}
        
    }
    
    public boolean loginUser()  {
    	HashMap<String, String> user;
		user = readUser();
		if (user.containsKey(email)) {
			String hash=user.get(email);
		    if(BCrypt.checkpw(password,hash)){
		    	return true;
		    } else {
		    	return false;
		    }
		} else {
			return false;
		}
    	
    }   
}
