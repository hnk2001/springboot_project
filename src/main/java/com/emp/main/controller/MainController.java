package com.emp.main.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.emp.main.model.Employee;
import com.emp.main.repository.EmployeeRepository;
import com.emp.main.service.EmployeeService;


@Controller
public class MainController {

    @Autowired
    EmployeeRepository employeeRepository;

    @Autowired
    EmployeeService employeeService;

    @GetMapping("/index")
    public String root(){
        return "index";
    }

    @GetMapping("/add-employee")
    public String add_employee_view(Model model, Authentication authentication){
        model.addAttribute("employee", new Employee());
        model.addAttribute("user", authentication.getName());
        return "add-employee";
    }

    @PostMapping("/add-employee")
    public String add_employee(@ModelAttribute Employee employee, Model model,  Authentication authentication){
        employee.setRecordCreated(new Date().toString());
        employeeRepository.save(employee);
        model.addAttribute("employees", employeeService.getAllEmployees());
        model.addAttribute("user", authentication.getName());
        return "employee-list";
    }

    @GetMapping("/employee-list")
    public String employee_list(Model model, Authentication authentication){
        model.addAttribute("employees", employeeService.getAllEmployees());
        model.addAttribute("user", authentication.getName());
        return "employee-list";
    }

    @GetMapping("/employee/update/{id}")
    public String update_employee_request(@PathVariable("id")long id,Model model, Authentication authentication){
        model.addAttribute("employee", employeeService.getEmployeeById(id));
        model.addAttribute("user", authentication.getName());
        return "update-employee";
    }

    @GetMapping("/update-employee")
    public String update_employee_form(){
        System.out.println(employeeService.getEmployeeById(13));
        return "update-employee";
    }

    @PostMapping("/updateEmployee")
    public String update_employee(@ModelAttribute Employee employee,Model model){
        employeeService.updateEmployee(employee, employee.getId());
        model.addAttribute("employees", employeeService.getAllEmployees());
        return "redirect:/employee-list";
    }

    @GetMapping("/employee/delete/{id}")
    public String delete_product(@PathVariable("id")long id,Model model,Authentication authentication){
        model.addAttribute("user", authentication.getName());
        employeeService.deleteEmployeeById(id);
        model.addAttribute("employees", employeeService.getAllEmployees());
        return "redirect:/employee-list";
    }

    
}
