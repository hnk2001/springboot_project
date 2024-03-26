package com.emp.main.service;

import java.util.List;

import com.emp.main.model.Employee;

public interface EmployeeService {
    public List<Employee> getAllEmployees();
    public Employee getEmployeeById(long id);
    public Employee updateEmployee(Employee employee,long id);
    public void deleteEmployeeById(long id);
}
