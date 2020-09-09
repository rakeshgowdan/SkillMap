package com.niit.service;

import com.niit.beans.Employee;
import com.niit.dao.EmployeDAOImple;
import com.niit.dao.EmployeeDAO;

public class EmployeeServiceImple implements EmployeeService{

	EmployeeDAO ed;
	@Override
	public int RegisterEmployee(Employee emp) {
		
		System.out.println("Service called");
		ed=new EmployeDAOImple();
		int flag=ed.addEmployee(emp);
		return flag;
		
		
	}

	

	@Override
	public void ApplyforJob(String MailId, String JobId) {
	
		
	}

}
