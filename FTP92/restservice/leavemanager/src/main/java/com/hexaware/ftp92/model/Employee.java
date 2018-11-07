package com.hexaware.ftp92.model;

import com.hexaware.ftp92.persistence.DbConnection;
import com.hexaware.ftp92.persistence.EmployeeDAO;

import java.util.Objects;
import java.util.List;

/**
 * Employee class to store employee personal details.
 * @author hexware
 */
public class Employee {

  /**
   * empId to store employee id.
   */
  private int empId;

  @Override
  public final boolean equals(final Object obj) {
    if (obj == null) {
      return false;
    }
    if (getClass() != obj.getClass()) {
      return false;
    }
    Employee emp = (Employee) obj;
    if (Objects.equals(empId, emp.empId)) {
      return true;
    }
    return false;
  }

  @Override
  public final int hashCode() {
    return Objects.hash(empId);
  }

  /**
   * @param argEmpId to initialize employee id.
   */
  public Employee(final int argEmpId) {
    this.empId = argEmpId;
  }

  /**
   * Gets the EmployeeId.
   * @return this Employee's ID.
   */
  public final int getEmpId() {
    return empId;
  }

  /**
   *
   * @param argEmpId to set employee id.
   */
  public final void setEmpId(final int argEmpId) {
    this.empId = argEmpId;
  }

  /**
   * The dao for employee.
   */
  private static EmployeeDAO dao() {
    DbConnection db = new DbConnection();
    return db.getConnect().onDemand(EmployeeDAO.class);
  }

  /**
   * list all employee details.
   * @return all employees' details
   */
  public static Employee[] listAll() {

    List<Employee> es = dao().list();
    return es.toArray(new Employee[es.size()]);
  }

  /**
   * list employee details by id.
   * @param empID id to get employee details.
   * @return Employee
   */
  public static Employee listById(final int empID) {
    return dao().find(empID);
  }

}
