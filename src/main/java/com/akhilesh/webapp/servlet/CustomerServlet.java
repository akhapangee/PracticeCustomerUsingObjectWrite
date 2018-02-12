/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.akhilesh.webapp.servlet;

import com.akhilesh.webapp.dao.CustomerDAO;
import com.akhilesh.webapp.dao.impl.CustomerDAOImpl;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Akhilesh
 */
@WebServlet(displayName = "customer",urlPatterns = {"/customer/*"})
public class CustomerServlet extends HttpServlet{
    private CustomerDAO customerDAO = new CustomerDAOImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       request.setAttribute("customers", customerDAO.getAll());
        request.getRequestDispatcher("/WEB-INF/views/customer/index.jsp").forward(request, response);
    }

    
    
}
