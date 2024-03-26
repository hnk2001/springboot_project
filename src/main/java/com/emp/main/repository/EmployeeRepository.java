package com.emp.main.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.emp.main.model.Employee;

import jakarta.transaction.Transactional;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee,Long>{
    
    @Query("from Employee where id=?1")
    public Employee getEmployeeById(long id);

    @Transactional
    @Modifying
    @Query("delete from Employee where id=?1")
    public void deleteEmployeeById(long id);
}
