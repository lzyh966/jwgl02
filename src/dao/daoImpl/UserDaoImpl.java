package dao.daoImpl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import dao.UserDao;
import model.User;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao {

	@Override
	public User findByNameAndPswd(String name, String pswd) {
		String queryString = "FROM User u WHERE u.userName=? AND u.password=?";		
		List list = getHibernateTemplate().find(queryString, name,pswd);
		if (list.size()>0) {
			return (User) list.get(0);
		} else {
			return null;
		}
	}
}
