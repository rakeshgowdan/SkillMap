package com.niit.dao;

import com.niit.beans.Employee;

public interface EmployeeDAO {

	public int addEmployee(Employee e);
	public void CheckEmployee(String User,String Password);
}
