package com.niit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.niit.DBConnect.DbConnect;
import com.niit.beans.Company;
import com.niit.beans.Jobs;

public class CompanyDaoImple implements CompanyDao{

	@Override
	public int addCompany(Company c) {
		System.out.println("Company dao--Add");
		try {
			Connection con=DbConnect.DbConnector();
			PreparedStatement prep=con.prepareStatement("insert into employer values(?,?,?,?,?,?)");
			prep.setString(2, c.getCompanyEmailId());
			prep.setNString(1, c.getCompanyname());
			prep.setString(3, c.getPassword());
			prep.setString(4, c.getCompanyHR());
			prep.setString(5, c.getCompanyHRName());
			prep.setString(6, "");
			int flag1=prep.executeUpdate();
			
			PreparedStatement prep2=con.prepareStatement("insert into logindata values(?,?,?,?)");
			prep2.setString(1,"");
			prep2.setString(2, c.getPassword());
			prep2.setString(3, "ROLE_COMPANY");
			prep2.setString(4, c.getCompanyEmailId());
			
			
			int flag2=prep2.executeUpdate();
			
			if(flag1==1 && flag2==1) {
				return 1;
			}
		}
		catch (Exception e) {
			System.out.println("register company fail "+ e);
		}
		return 0;
	}

	@Override
	public int addJob(Jobs j, String mail) {
		
		try {
			Connection con=DbConnect.DbConnector();
			PreparedStatement prep1=con.prepareStatement("select * from employer where CompanyEmailId=?");
			prep1.setString(1, mail);
			ResultSet rs=prep1.executeQuery();
			rs.next();
			String CompanyName=rs.getString(1);
			String CHR=rs.getString(5);
			
			PreparedStatement prep2=con.prepareStatement("insert into jobs(JobName,CompanyName,CompanyContactPerson,RequiredSkills,CompanymailId,Jobdescription) values(?,?,?,?,?,?)");
			prep2.setString(1,j.getJobName());
			prep2.setString(2, CompanyName);
			prep2.setString(3, CHR);
			prep2.setString(4, j.getRequiredSkills());
			prep2.setString(5, mail);
			prep2.setString(6,j.getJobdescription());
			
			int flag=prep2.executeUpdate();
			return flag;
		}catch (SQLException e) {
			System.out.println(" add job error "+e);
		}
		return 0;
	}

}
