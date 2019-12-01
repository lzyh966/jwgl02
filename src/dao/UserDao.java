package dao;

import model.User;

public interface UserDao {
	
	public User findByNameAndPswd(String name, String pswd);
	
}
