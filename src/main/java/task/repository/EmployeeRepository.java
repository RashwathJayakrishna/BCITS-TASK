package task.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import task.dto.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Integer> {
}
