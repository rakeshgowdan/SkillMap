package com.niit.service;

import java.util.List;

import com.niit.beans.AppliedJobs;
import com.niit.beans.Jobs;
import com.niit.dao.JobDao;
import com.niit.dao.JobDaoImple;

public class JobServiceImple implements JobService {

	JobDao jd=new JobDaoImple();
	@Override
	public List<Jobs> fetchAllJobs() {
		List<Jobs>li=jd.FetchJobs();
		return li;
	}
	@Override
	public int SubmitJobForm(Jobs j, String s1, String s2, String s3, String s4) {
	
		int flag=jd.submitApplication( j,  s1,  s2,  s3,  s4);
		return flag;
	}
	@Override
	public List<AppliedJobs> fetchAllAppliedJobs() {
		List<AppliedJobs>li=jd.fetchAllAppliedJob();
		return li;
	}
	
	

}
