package Login_Register;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Serializable;
import java.util.ArrayList;
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

    public void register() {
        System.out.println(true);
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

    public void fileExists(File file) throws IOException {
        if (file.exists()) {
        } else {
            file.createNewFile();
        }
    }

    @SuppressWarnings("resource")
	public HashMap<String, String> readUser() throws IOException {
    	HashMap<String, String> user = new HashMap<String, String>();
        File file = new File("user.txt");
        String line;
        fileExists(file);
        BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
        while (null != (line = bufferedReader.readLine())) {
        		user.put((line.substring(0, line.indexOf('|') - 1)).trim(),(line.substring(line.indexOf('|') + 2).trim()));  	
        }
        
        return user;
    }

    @SuppressWarnings("resource")
	public boolean insertUser() throws IOException {
    	HashMap<String, String> user = readUser();
        File file = new File("user.txt");
        PrintWriter pWriter = new PrintWriter(new FileWriter(file, true), true);
        if (user.containsKey(email)) {
            return false;
        } else {
        	fileExists(file);
            pWriter.println(email + " || " + this.hash());
            pWriter.flush();
            pWriter.close();
            return true;
        }
    }
    
    public boolean loginUser() throws IOException {
    	HashMap<String, String> user = readUser();
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
