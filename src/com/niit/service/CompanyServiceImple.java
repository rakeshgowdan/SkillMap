package com.niit.service;

import com.niit.beans.Company;
import com.niit.beans.Jobs;
import com.niit.dao.CompanyDao;
import com.niit.dao.CompanyDaoImple;

public class CompanyServiceImple implements CompanyService {

	CompanyDao cd=new CompanyDaoImple();
	@Override
	public int RegisterCompany(Company c) {
		
		
		int flag=cd.addCompany(c);
		return flag;
	}

	@Override
	public int addJob(Jobs j,String mail) {
		int flag=cd.addJob(j, mail);
		return flag;
	}

}
