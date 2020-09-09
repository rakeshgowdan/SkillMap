package com.niit.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niit.beans.AppliedJobs;
import com.niit.service.JobService;
import com.niit.service.JobServiceImple;


@WebServlet("/ApproveJobsApplications")
public class ApproveJobsApplications extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public ApproveJobsApplications() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		JobService js=new JobServiceImple();
		List<AppliedJobs> list=js.fetchAllAppliedJobs();
		
		request.setAttribute("Appliedjobs", list);
		request.getRequestDispatcher("AppovePage.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
