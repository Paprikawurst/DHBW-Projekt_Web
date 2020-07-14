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
		//Nutzer Passwort hashen
		return  BCrypt.hashpw(password);
	}

	public void fileExists(File file)  {
		try {
			//Testen ob Datei existiert
			if (file.exists()) {
			} else {
				//File neu Anlegen
				file.createNewFile();
			}
		} catch (IOException e) {
			System.out.println("Es ist ein Fehler mit der Datei aufgetreten!");
		}
	}

	public HashMap<String, String> readUser() {
		HashMap<String, String> user = new HashMap<String, String>();
		try {
			File file = new File("user.txt");
			String line="";
			fileExists(file);
			BufferedReader bufferedReader= new BufferedReader(new FileReader(file));
			//Zeilen anlegen und in HashMap legen. Der linke Teil ist der Nutzer und der rechte Teil das gehashte Passwort
			while (null != (line = bufferedReader.readLine())) {
				user.put((line.substring(0, line.indexOf('|'))).trim(),(line.substring(line.indexOf('|') + 2).trim()));  	
			}
			bufferedReader.close();        
		} catch (FileNotFoundException e) {	
			System.out.println("Es ist ein Fehler mit der Datei aufgetreten!");
		} catch (IOException e) {
			System.out.println(e.getStackTrace());
		}
		return user;
	}

	public boolean insertUser()  {
		HashMap<String, String> user;
		try {
			//Alle Nutzer in HashMap legen
			user = readUser();
			File file = new File("user.txt");
			PrintWriter pWriter = new PrintWriter(new FileWriter(file, true), true);  
			//Testen ob nutzer in der Hashmap ist
			if (user.containsKey(email)) {
				pWriter.close();
				return false;
			} else {
				//wenn nicht Nutzer regestrieren und Dateien vorbereiteb
				File file2 = new File("points.txt");
				PrintWriter pWriter2 = new PrintWriter(new FileWriter(file2, true), true);
				File file3= new File("activeskins.txt");
				PrintWriter pWriter3 = new PrintWriter(new FileWriter(file3, true), true);
				File file4= new File("purchases.txt");
				PrintWriter pWriter4 = new PrintWriter(new FileWriter(file4, true), true);	 
				fileExists(file);
				//Nutzer hashen und Einügen
				pWriter.println(email + "||" + this.hash());
				pWriter.flush();
				pWriter.close();	
				//Diese schonmal erzeugen für den Shop und die Spiele
				fileExists(file2);		        
				pWriter2.println(email + "||1000");
				pWriter2.flush();
				pWriter2.close();	            
				fileExists(file3);		        
				pWriter3.println(email + "||Snake/Default");
				pWriter3.println(email + "||CatchBlock/Default");
				pWriter3.flush();
				pWriter3.close();	            
				fileExists(file4);		        
				pWriter4.println(email + "||Default");
				pWriter4.flush();
				pWriter4.close();
				return true;
			}
		} catch (IOException e) {
			System.out.println("Es ist ein Fehler mit der Datei aufgetreten!");
			return false;
		}

	}   

	public boolean loginUser()  {
		HashMap<String, String> user;
		//Alle Nutzer in HashMap legen
		user = readUser();
		//Schauen, ob Nutzer existiert
		if (user.containsKey(email)) {
			//Hash des Nutzers auslesen
			String hash=user.get(email);
			//Vergleichen Eingabe und Hash
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
