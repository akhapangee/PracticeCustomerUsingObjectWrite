/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.akhilesh.webapp.dao;

import com.akhilesh.webapp.entity.Customer;
import java.io.File;
import java.util.List;

/**
 *
 * @author Akhilesh
 */
public interface CustomerDAO {
    List<Customer> getAll();
    boolean insert(Customer c);
    boolean writeCustomerObjectToFile(List<Customer> customers);
    List<Customer> readCustomerObjectFromFile(File file);
    Customer getById(int id);
    boolean deleteCustomer(int id);
    int getHighestEmpId();
}
