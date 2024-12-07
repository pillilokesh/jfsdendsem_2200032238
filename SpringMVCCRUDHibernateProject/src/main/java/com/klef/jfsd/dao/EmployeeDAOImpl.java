package com.klef.jfsd.dao;

import java.util.List;

import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;

import com.klef.jfsd.model.Employee;

@Transactional
public class EmployeeDAOImpl implements EmployeeDAO
{
	private HibernateTemplate hibernateTemplate;
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Override
	public String addemp(Employee e) 
	{
		hibernateTemplate.persist(e);
		return "Add Employee Successfully";
	}

	@Override
	public String updateemp(Employee e) 
	{
		Employee emp = hibernateTemplate.get(Employee.class, e.getId());
		emp.setName(e.getName());
		emp.setEmail(e.getEmail());
		emp.setContact(e.getContact());
		emp.setSalary(e.getSalary());
		return "Updated Successfully";
	}

	@Override
	public String deleteemp(int eid) 
	{
		Employee e = hibernateTemplate.get(Employee.class, eid);
		hibernateTemplate.delete(e);
		return "Employee Deleted Successfully";
	}

	@Override
	public List<Employee> viewallemp() 
	{
		return hibernateTemplate.loadAll(Employee.class);
	}

	@Override
	public Employee viewempbyid(int eid) 
	{
		return hibernateTemplate.get(Employee.class, eid);
	}

}
