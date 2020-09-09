package com.niit.service;

import java.util.List;

import com.niit.beans.AppliedJobs;
import com.niit.beans.Jobs;

public interface JobService {

	public List<Jobs> fetchAllJobs();
	public int SubmitJobForm(Jobs j,String s1, String s2, String s3, String  s4);
	public List<AppliedJobs> fetchAllAppliedJobs();
	
}
