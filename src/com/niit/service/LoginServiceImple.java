package com.niit.service;

import java.util.List;

import com.niit.dao.LoginDao;
import com.niit.dao.LoginDaoImple;

public class LoginServiceImple implements LoginService {

	@Override
	public List<String> checkUser(String mail, String pass) {
		
		LoginDao ld=new LoginDaoImple();
		List<String> li=ld.login(mail, pass);
		return li;
	}

}
