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

	public void fileExists(File file) {
		try {
			if (file.exists()) {
			} else {
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
			while ((line = bufferedReader.readLine())!=null) {       
				if(line.indexOf("|") != -1) { 
					username=line.substring(0,line.indexOf("|")).trim();
					purch=line.substring(line.indexOf("|")+2).trim();
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
		ArrayList<String> buys = readPurchases();
		ArrayList<String> myBuys = new ArrayList<String>();
		String buyer;
		for (String line : buys) {
			buyer=line.substring(0,line.indexOf("|")).trim();
			String skin = line.substring(line.indexOf('|') + 2).trim();
			if (buyer.equals(username)&&skin.equals("Default")==false) {
				String entry = "User: " + buyer + " bought the skin||" + skin;
				if (!myBuys.contains(entry)) {
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
		ArrayList<String> point = readallPoints();
		for (String line : point) {
			if(line.substring(0, line.indexOf('|')).trim().equals(username)) {
				points=Integer.parseInt(line.substring(line.indexOf('|') + 2).trim());
			} 
		} 
		return points;
	}

	public ArrayList<String> notBoughtSkins(String username)  {
		ArrayList<String> myBuys = myPurchases(username);
		ArrayList<String> skins = new ArrayList<String>();
		String existingSkins []= {"Corona","Maske","LOL"};
		for (String skin : existingSkins ) {
			if((myBuys.contains(("User: " + user + " bought the skin||") + skin))==false && (skins.contains(skin))==false) {
				skins.add(skin); 
			}
		}
		return skins;
	}

	public String buySkin(String username, String skin)  {           
		try {
			if (points >= 1000) {
				ArrayList<String> point = readallPoints();  
				File file = new File("purchases.txt");
				PrintWriter pWriter = new PrintWriter(new FileWriter(file, true), true);
				File file2 = new File("points.txt");
				fileExists(file); 
				PrintWriter pWriter2 = new PrintWriter(new FileWriter(file2, true), true);
				pWriter.println(username + "||" + skin);
				file2.delete();
				fileExists(file2);      
				for (String line : point) {
					if(line.substring(0, line.indexOf('|')).trim().equals(username)) {
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
		ArrayList<String> myBuys = myPurchases(username);
		ArrayList<String> skins = new ArrayList<String>();
		myBuys.add("User: " + user + " bought the skin||Default");
		for (String skin : myBuys ) {
			skins.add(skin.substring(skin.indexOf('|') + 2).trim()); 
		}
		return skins;
	}

	public void setSkin(String username,String game,String skin) {
		ArrayList<String> skins = readallchossenSkins();
		try {
			File file = new File("activeskins.txt");
			file.delete();
			fileExists(file);
			PrintWriter pWriter = new PrintWriter(new FileWriter(file, true), true);
			for(String activeskins: skins) {
				if(activeskins.substring(0, activeskins.indexOf("|")).trim().equals(username)) {
					pWriter.write(username + "||" + game + "/" + skin);
				} else {
					pWriter.write(activeskins);
				}
				pWriter.close();
			}  
		} catch (FileNotFoundException e) { 
			System.out.println("Es ist ein Fehler mit der Datei aufgetreten!");
		} catch (IOException e) {
			System.out.println(e.getStackTrace());
		}
	}
}