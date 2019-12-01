package service;

import model.User;

public interface UserService {
	public User findByNameAndPswd(String name, String pswd);
}
