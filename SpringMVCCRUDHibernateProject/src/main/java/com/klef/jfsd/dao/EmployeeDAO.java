package com.klef.jfsd.dao;

import java.util.List;

import com.klef.jfsd.model.Employee;

public interface EmployeeDAO 
{
	public String addemp(Employee e);
	public String updateemp(Employee e);
	public String deleteemp(int eid);
	public List<Employee> viewallemp();
	public Employee viewempbyid(int eid);
}
