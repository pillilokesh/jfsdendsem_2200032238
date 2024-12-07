package com.klef.jfsd.service;

import java.util.List;

import com.klef.jfsd.model.Employee;

public interface EmployeeService 
{
	public String addemp(Employee e);
	public String updateemp(Employee e);
	public String deleteemp(int eid);
	public List<Employee> viewallemp();
	public Employee viewempbyid(int eid);
}
