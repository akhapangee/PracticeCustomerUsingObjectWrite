/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.akhilesh.webapp.dao.impl;

import com.akhilesh.webapp.dao.CustomerDAO;
import com.akhilesh.webapp.entity.Customer;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Akhilesh
 */
public class CustomerDAOImpl implements CustomerDAO {

    private static File file = new File("D:\\JAVA\\Leapfrog Academy\\Projects\\Day_09\\Day_09_PracticeCustomerUsingObjectWrite\\temp.dat");
    private List<Customer> customers = new ArrayList<>();

    @Override
    public List<Customer> getAll() {
        return readCustomerObjectFromFile(file);
    }

    @Override
    public boolean insert(Customer c) {
        customers.add(c);
        return writeCustomerObjectToFile(customers);
    }

    @Override
    public Customer getById(int id) {
        customers = readCustomerObjectFromFile(file);

        for (Customer c : customers) {
            if (id == c.getId()) {
                return c;
            }
        }
        return null;
    }

    @Override
    public boolean writeCustomerObjectToFile(List<Customer> customers) {
        try {
            FileOutputStream fos = new FileOutputStream(file);
            ObjectOutputStream ops = new ObjectOutputStream(fos);
            ops.writeObject(customers);
            System.out.println("DONE AKHILESH");
            ops.flush();
            return true;
        } catch (IOException e) {
            System.out.println(e.getMessage());
        }
        return false;
    }

    @Override
    public List<Customer> readCustomerObjectFromFile(File file) {
        try {
            FileInputStream fis = new FileInputStream(file);
            ObjectInputStream ois = new ObjectInputStream(fis);
            customers = (List<Customer>) ois.readObject();
            return customers;
        } catch (IOException | ClassNotFoundException e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    @Override
    public boolean deleteCustomer(int id) {
        customers = readCustomerObjectFromFile(file);
        Customer c = getById(id);
        customers.remove(c);
        return writeCustomerObjectToFile(customers);
    }

    @Override
    public int getHighestEmpId() {
        customers = readCustomerObjectFromFile(file);
        int highest = 0;
        if (customers.size() == 0) {
            return 0;
        } else {
            for (Customer c : customers) {
                if (c.getId() > highest) {
                    highest = c.getId();
                }
            }
        }
        return highest;
    }

}
