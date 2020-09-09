package com.niit.dao;

import java.util.List;

import com.niit.beans.AppliedJobs;
import com.niit.beans.Jobs;

public interface JobDao {
	
	public List<Jobs> FetchJobs();
	public int submitApplication(Jobs j, String s1, String s2, String s3, String s4);
	public List<AppliedJobs> fetchAllAppliedJob();

}
