package service.serviceImpl;

import dao.UserDao;
import model.User;
import service.UserService;

public class UserServiceImpl implements UserService{
	UserDao userDao;
	
	@Override
	public User findByNameAndPswd(String name, String pswd) {
		
		return  userDao.findByNameAndPswd(name, pswd);
	}

}
