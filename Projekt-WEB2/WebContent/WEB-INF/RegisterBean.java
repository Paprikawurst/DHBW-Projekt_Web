import java.io.Serializable;

public class RegisterBean implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String email;
	private String passwort;
	
	
	public RegisterBean() {
	}
		
	public RegisterBean(String email, String passwort) {
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
