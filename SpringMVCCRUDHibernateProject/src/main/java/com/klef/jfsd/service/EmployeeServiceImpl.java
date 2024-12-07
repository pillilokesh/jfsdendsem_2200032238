package com.klef.jfsd.service;

import java.util.List;

import com.klef.jfsd.dao.EmployeeDAO;
import com.klef.jfsd.model.Employee;

public class EmployeeServiceImpl implements EmployeeService
{

	public EmployeeDAO employeeDAO;
	
	public EmployeeDAO getEmployeeDAO() {
		return employeeDAO;
	}

	public void setEmployeeDAO(EmployeeDAO employeeDAO) {
		this.employeeDAO = employeeDAO;
	}

	@Override
	public String addemp(Employee e) {
		
		return employeeDAO.addemp(e);
	}

	@Override
	public String updateemp(Employee e) {
		// TODO Auto-generated method stub
		return employeeDAO.updateemp(e);
	}

	@Override
	public String deleteemp(int eid) {
		// TODO Auto-generated method stub
		return employeeDAO.deleteemp(eid);
	}

	@Override
	public List<Employee> viewallemp() {
		// TODO Auto-generated method stub
		return employeeDAO.viewallemp();
	}

	@Override
	public Employee viewempbyid(int eid) {
		// TODO Auto-generated method stub
		return employeeDAO.viewempbyid(eid);
	}

}
