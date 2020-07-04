package Shop_Games;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

public class Shop_Bean {
	private int points;
	
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
	
    public void fileExists(File file) throws IOException {
        if (file.exists()) {
        } else {
            file.createNewFile();
        }
    }
    
    public ArrayList<String> readPurchases() throws IOException{
    	ArrayList<String> buys = new ArrayList<String>();
         File file = new File("purchases.txt");
         String line;
         fileExists(file);
         BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
         while (null != (line = bufferedReader.readLine())) {
         		buys.add((line.substring(0, line.indexOf('|') - 1)).trim()+"||"+(line.substring(line.indexOf('|') + 2).trim()));
         }
		return buys;   	
    }
    
    public HashMap<String, String> myPurchases(String username) throws IOException{
    	ArrayList<String> buys = readPurchases();    	
    	HashMap<String, String> myBuys = new HashMap<String, String>();
    	int i=0;
    	for(String line: buys) {
    		String user=line.substring(0, line.indexOf('|')).trim();
    		String game=line.substring(line.indexOf('|') + 2).trim();
    		if(user.contentEquals(username)) {
    			myBuys.put("Kauf" + i + ": " + user, game);
    			i++;
    		}	
    	}
        
		return myBuys;   	
    }

}
