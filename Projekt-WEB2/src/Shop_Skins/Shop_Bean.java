package Shop_Skins;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

public class Shop_Bean {
	private int points;
	private String user;

	public Shop_Bean() throws IOException {
	}

	public Shop_Bean(int points) throws IOException {
		this.points = points;
	}

	public int getPoints() {
		return points;
	}

	public void setPoints(int points) {
		this.points = points;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
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

	public ArrayList<String> readPurchases() {
		ArrayList<String> buys = new ArrayList<String>();
		try {            
			File file = new File("purchases.txt");
			String purch="";
			String username="";
			String line;
			fileExists(file);
			BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
			//Datei Einlesen
			while ((line = bufferedReader.readLine())!=null) {   
				//Testen ob Zeile gültig
				if(line.indexOf("|") != -1) {
					//Wenn ja user und purchase einlesen
					username=line.substring(0,line.indexOf("|")).trim();
					purch=line.substring(line.indexOf("|")+2).trim();
					//Zu Liste hinzufügen
					buys.add(username + " || "  + purch);
				}
			}      
			bufferedReader.close();
		} catch (FileNotFoundException e) {
			System.out.println("Es ist ein Fehler mit der Datei aufgetreten!");
		} catch (IOException e) {
			System.out.println(e.getStackTrace());
		}
		return buys;
	}

	public ArrayList<String> myPurchases(String username) {
		//Alles Purchases reinlegen
		ArrayList<String> buys = readPurchases();
		ArrayList<String> myBuys = new ArrayList<String>();
		String buyer;
		//Durch je Zeilen der Purchases gehen
		for (String line : buys) {
			//Käufer und Skin festlegen
			buyer=line.substring(0,line.indexOf("|")).trim();
			String skin = line.substring(line.indexOf('|') + 2).trim();
			//Testen ob useranem = Käufer ist und es sich nicht um den Default Skin handelt
			if (buyer.equals(username)&&skin.equals("Default")==false) {
				//Eintrag für die Liste
				String entry = "User: " + buyer + " bought the skin||" + skin;
				//Testen ob es schon in der Liste ist
				if (!myBuys.contains(entry)) {
					//Entry in Liste packen
					myBuys.add(entry);
				}
			}
		}
		return myBuys;
	}

	public ArrayList<String> readallPoints() {       
		ArrayList<String> points = new ArrayList<String>();
		try {
			File file = new File("points.txt");
			String line;
			fileExists(file);
			BufferedReader bufferedReader;
			bufferedReader = new BufferedReader(new FileReader(file));
			//Zeilen aus der Datei einlesen und in die Liste legen
			while (null != (line = bufferedReader.readLine())) {
				points.add(line);
			}
			bufferedReader.close();        
		} catch (FileNotFoundException e) { 
			System.out.println("Es ist ein Fehler mit der Datei aufgetreten!");
		} catch (IOException e) {
			System.out.println(e.getStackTrace());
		}
		return points;
	}

	public int myPoints(String username) {
		//Alle Punkte aus Liste holen
		ArrayList<String> point = readallPoints();
		//Durch alle Punkte gehen
		for (String line : point) {
			//Wenn Eintrag = username
			if(line.substring(0, line.indexOf('|')).trim().equals(username)) {
				//Punkte festlegen
				points=Integer.parseInt(line.substring(line.indexOf('|') + 2).trim());
			} 
		} 
		return points;
	}
	
	public void addPoints(String user,String username,String points) {
		ArrayList<String> point = readallPoints();  
		int npoints=0;
		File file = new File("points.txt");
		PrintWriter pWriter;
		try {
			pWriter = new PrintWriter(new FileWriter(file, true), true);
			file.delete();
			fileExists(file); 
			for(String line:point) {
			if(line.substring(0, line.indexOf('|')).trim().equals(username)) {
				npoints=npoints+Integer.parseInt(points);
				pWriter.println(username + "||" + npoints);
			} else {
				pWriter.println(line);
			}
		}
		} catch (IOException e) {
			System.out.println(e.getStackTrace());
		}
		
		
	}

	public ArrayList<String> notBoughtSkins(String username)  {
		//Käufe aus Liste holen
		ArrayList<String> myBuys = myPurchases(username);
		ArrayList<String> skins = new ArrayList<String>();
		//Vorgebene Liste von Skins
		String existingSkins []= {"Default","Biker","LOL"};
		//Durch vorgebene Skins gehen
		for (String skin : existingSkins ) {
			//Wenn noch nicht vorhanden und noch nicht gekauft in Liste hinzufügen
			if((myBuys.contains(("User: " + user + " bought the skin||") + skin))==false && (skins.contains(skin))==false) {
				skins.add(skin); 
			}
		}
		return skins;
	}

	public String buySkin(String username, String skin)  {           
		try {
			//Nur ausführen, wenn man 1000 Punkte oder mehr hat
			if (points >= 1000) {
				ArrayList<String> point = readallPoints();  
				File file = new File("purchases.txt");
				PrintWriter pWriter = new PrintWriter(new FileWriter(file, true), true);
				File file2 = new File("points.txt");
				fileExists(file); 
				PrintWriter pWriter2 = new PrintWriter(new FileWriter(file2, true), true);
				pWriter.println(username + "||" + skin);
				//Löschen und Neuanlegen, um Inhalt aktualisieren zu können
				file2.delete();
				fileExists(file2); 
				//Durch Punkte interieren
				for (String line : point) {
					//Username aus Datei mit username abgleichen
					if(line.substring(0, line.indexOf('|')).trim().equals(username)) {
						//Punkte abziehen und wieder reinschreiben
						points=points-1000;
						pWriter2.println(username + "||" + points);
					} else {      
						pWriter2.println(line);
					}
				}         
				pWriter.flush();
				pWriter.close();
				pWriter2.flush();
				pWriter2.close();        
				return "Erfolgreich eingetragen!";
			} else {
				return "Fehlgeschlagen!";
			}
		} catch (FileNotFoundException e) { 
			System.out.println("Es ist ein Fehler mit der Datei aufgetreten!");
			return "Fehlgeschlagen!";
		}catch (IOException e) {
			System.out.println(e.getStackTrace());
			return "Fehlgeschlagen!";
		}
	}

	public ArrayList<String> readallchossenSkins() {       
		ArrayList<String> skins = new ArrayList<String>();
		try {
			File file = new File("activeskins.txt");
			String line;
			fileExists(file);
			BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
			//Zeilen der Datei einlsen und in die Liste legen
			while (null != (line = bufferedReader.readLine())) {
				skins.add(line);
			}
			bufferedReader.close();        
		} catch (FileNotFoundException e) { 
			System.out.println("Es ist ein Fehler mit der Datei aufgetreten!");
		} catch (IOException e) {
			System.out.println(e.getStackTrace());
		}
		return skins;
	}

	public ArrayList<String> chooseSkins(String username)  {
		//Alle Einäufe aus Liste holen
		ArrayList<String> myBuys = myPurchases(username);
		ArrayList<String> skins = new ArrayList<String>();
		//Default Skin zur Auswahl in die Liste legen
		myBuys.add("User: " + user + " bought the skin||Default");
		//Durch alle Einkäufe durchgehen
		for (String skin : myBuys ) {
			//Skins herausfiltern und in die Liste legen
			skins.add(skin.substring(skin.indexOf('|') + 2).trim()); 
		}
		return skins;
	}

	public String setSkin(String username,String game,String skin) {
		//Alle Skins aus Liste holen
		ArrayList<String> skins = readallchossenSkins();
		String back="";
		try {
			File file = new File("activeskins.txt");
			//Löschen zum neu reinschreiben
			file.delete();
			//Neu anlegen
			fileExists(file);
			PrintWriter pWriter = new PrintWriter(new FileWriter(file, true), true);
			//Durch Liste aller Skins gehen
			for(String activeskins: skins) {
				//Wenn username aus Datei = username neuen gesetzen Skins setzen
				if(activeskins.substring(0, activeskins.indexOf("|")).trim().equals(username)) {
					pWriter.write(username + "||" + game + "/" + skin);
					back="Erfolgreich geändert!";
				} else {
					//Wenn nicht einfach wieder in Datei schreiben
					pWriter.write(activeskins);
				}
				pWriter.close();
			}  
		} catch (FileNotFoundException e) { 
			System.out.println("Es ist ein Fehler mit der Datei aufgetreten!");
			back="Ändern nicht möglich!";
		} catch (IOException e) {
			System.out.println(e.getStackTrace());
			back="Ändern nicht möglich!";
		}
		return back;
	}
	
	public String readMyChossenSkin(String username,String game) {       
		ArrayList<String> skins = readallchossenSkins();
		String back="";
		for(String activeskins: skins) {
			//Wenn username aus Datei = username neuen gesetzen Skins setzen
			String user2=activeskins.substring(0, activeskins.indexOf("|")).trim();
			String game2=activeskins.substring((activeskins.indexOf('|') + 2),(activeskins.indexOf('/'))).trim();
			String skin=activeskins.substring(activeskins.indexOf('/')+1);
			if(user2.equals(username)&&game.equals(game2)) {
				//Rückgabe des gesetzen Skins für das Spiel
				back=skin;
			}
		}
		return back;
	}
	
	
}