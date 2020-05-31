import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Serializable;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;

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
}
