package com.emp.main.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.emp.main.model.Employee;
import com.emp.main.repository.EmployeeRepository;
import com.emp.main.service.EmployeeService;

@Service
public class EmployeeServiceImpl implements EmployeeService{

    @Autowired
    EmployeeRepository employeeRepository;

    @Override
    public List<Employee> getAllEmployees() {
        return employeeRepository.findAll();
    }

    @Override
    public Employee updateEmployee(Employee employee, long id) {
        return employeeRepository.save(employee);
    }

    @Override
    public Employee getEmployeeById(long id) {
        return employeeRepository.getEmployeeById(id);
    }
     
    @Override
    public void deleteEmployeeById(long id) {
        employeeRepository.deleteEmployeeById(id);
    }
}
