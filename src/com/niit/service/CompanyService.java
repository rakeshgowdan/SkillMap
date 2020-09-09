package com.niit.service;

import com.niit.beans.Company;
import com.niit.beans.Jobs;


public interface CompanyService {
	public int RegisterCompany(Company c);
	public int addJob(Jobs j,String mail);
	
}
