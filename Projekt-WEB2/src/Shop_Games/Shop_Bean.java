package Shop_Games;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;

public class Shop_Bean {
	private int points;
	private HashMap<String, String> purchases;
	
	public Shop_Bean() throws IOException {
		setPurchases(new HashMap<String, String>());
		setPurchases(readPurchases());
	}	
		
	public Shop_Bean(int points) throws IOException {
		this.points = points;
		setPurchases(new HashMap<String, String>());
		setPurchases(readPurchases());
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
    
    public HashMap<String, String> readPurchases() throws IOException{
    	HashMap<String, String> buys = new HashMap<String, String>();
         File file = new File("purchases.txt");
         String line;
         fileExists(file);
         BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
         while (null != (line = bufferedReader.readLine())) {
         		buys.put((line.substring(0, line.indexOf('|') - 1)).trim(),(line.substring(line.indexOf('|') + 2).trim()));
         }
		return buys;   	
    }

	public HashMap<String, String> getPurchases() {
		return purchases;
	}

	public void setPurchases(HashMap<String, String> purchases) {
		this.purchases = purchases;
	}
}
