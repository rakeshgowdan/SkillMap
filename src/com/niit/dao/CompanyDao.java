package com.niit.dao;

import com.niit.beans.Company;
import com.niit.beans.Jobs;

public interface CompanyDao {

	public int addCompany(Company c);
	public int addJob(Jobs j,String mail);
}
