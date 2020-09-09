package com.niit.service;

import com.niit.beans.Employee;

public interface EmployeeService {

	public int RegisterEmployee(Employee emp);
	
	public void ApplyforJob(String MailId,String JobId);
	
}
