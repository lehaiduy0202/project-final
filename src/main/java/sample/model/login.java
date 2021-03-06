	package sample.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="user")
public class login implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int iduser;
	private String username;
	private String password;
	
	public login(){}
	
	
	public login(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}


	public int getIduser() {
		return iduser;
	}
	public void setIduser(int iduser) {
		this.iduser = iduser;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}


	@Override
	public String toString() {
		return "login [iduser=" + iduser + ", username=" + username + ", password=" + password + "]";
	}
	
	
	
	
	
	
	

}
