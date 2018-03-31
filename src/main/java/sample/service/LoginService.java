package sample.service;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import sample.dao.loginReponsitory;
import sample.model.login;

@Service
@Transactional
public class LoginService {

	private final loginReponsitory loginReponsitory;

	public LoginService(loginReponsitory loginReponsitory) {
		this.loginReponsitory = loginReponsitory;
	}
	public login findByUserNameByPassword(String username,String Password){
		return loginReponsitory.findByUsernameAndPassword(username, Password);	
	
	}
}
