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
            System.out.println("Fehler beim Erstellen der Datei!");
        }
    }

    public ArrayList<String> readPurchases() {
        ArrayList<String> buys = new ArrayList<String>();
    	try {            
            File file = new File("purchases.txt");
            String line;
            fileExists(file);
            BufferedReader bufferedReader;
            bufferedReader = new BufferedReader(new FileReader(file));
            while (null != (line = bufferedReader.readLine())) {
                buys.add((line.substring(0, line.indexOf('|') - 1)).trim() + " || "
                        + (line.substring(line.indexOf('|') + 2).trim()));
            }
            bufferedReader.close();
        } catch (FileNotFoundException e) {
            System.out.println("Datei nicht gefunden!");
            return buys;
        } catch (IOException e) {
            System.out.println("Dateifehler!");
            return buys;
        }
        return buys;
    }

    public void readPoints(String username) {
    	try {            
            File file = new File("points.txt");
            String line;
            fileExists(file);
            BufferedReader bufferedReader;
            bufferedReader = new BufferedReader(new FileReader(file));
            while (null != (line = bufferedReader.readLine())) {
                if(line.substring(0, line.indexOf('|') - 1).trim().contentEquals(username)) {
                	points=Integer.parseInt(line.substring(line.indexOf('|') + 2).trim());
                }
            }
            bufferedReader.close();
        } catch (FileNotFoundException e) {
            System.out.println("Datei nicht gefunden!");
        } catch (IOException e) {
            System.out.println("Dateifehler!");
        }
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
		System.out.println("Es ist ein Fehler mit der User-Datei aufgetreten!");
		} catch (IOException e) {
			System.out.println("Es ist ein Fehler mit der User-Datei aufgetreten!");
		}
        return points;
    }
    
    public ArrayList<String> myPurchases(String username) {
        ArrayList<String> buys = readPurchases();
        ArrayList<String> myBuys = new ArrayList<String>();
        for (String line : buys) {
            String user = line.substring(0, line.indexOf('|') - 1).trim();
            String skin = line.substring(line.indexOf('|') + 2).trim();
            if (user.contentEquals(username)) {
                String entry = "User: " + user + " bought the skin|| " + skin;
                if (!myBuys.contains(entry)) {
                    myBuys.add(entry);
                }
            }
        }
        return myBuys;
    }

    public ArrayList<String> notBoughtSkins(String username)  {
        ArrayList<String> myBuys = myPurchases(username);
        ArrayList<String> skins = new ArrayList<String>();
        String existingSkins []= {"Corona","Maske"};
        String skin = " ";
        String entry="";
        for (String line : myBuys) {
        	boolean existing=false;
            skin = line.substring((line.indexOf('|') + 2)).trim();
            for(int i=0;i<existingSkins.length;i++) {
            	            
            	if (skin.equals(existingSkins[i])) {
            		existing=true;
            	} 
            	
            	else {
            		skins.add(existingSkins[i]);
            	}
         }
            
            
        }        
        return skins;
    }

    public String buySkin(String username, String skin)  {           
			try {
				 if (points >= 1000) {
			            File file = new File("purchases.txt");
			            PrintWriter pWriter;
			            pWriter = new PrintWriter(new FileWriter(file, true), true);
			            fileExists(file);
			            pWriter.println(username + " || " + skin);
			            pWriter.flush();
			            pWriter.close();
			            ArrayList<String> point = readallPoints();
			            File file2 = new File("points.txt");
			            file2.delete();
			            fileExists(file2);
			            PrintWriter pWriter2;
			            pWriter2 = new PrintWriter(new FileWriter(file2, true), true);
			            for (String line : point) {
			            	if(line.substring(0, line.indexOf('|') - 1).trim().equals(username)) {
			            		points=points-1000;
			            		pWriter2.println(username + " || " + points);
			            	} else {			
			            		 pWriter2.println(line);
			            	}
			            }			           
			            pWriter2.flush();
			            pWriter2.close();
			            
			            return "Erfolgreich eingetragen!";
				 } else {
					 return "nicht genug Punkte!";
				 }
			}catch (IOException e) {
				System.out.println("Dateifehler!");
				return "Dateifehler!";
			}
    }
}