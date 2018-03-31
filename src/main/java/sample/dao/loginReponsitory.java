package sample.dao;

import org.springframework.data.repository.CrudRepository;

import sample.model.login;

public interface loginReponsitory extends CrudRepository<login,Integer> {
	public login findByUsernameAndPassword(String username,String Password);
}