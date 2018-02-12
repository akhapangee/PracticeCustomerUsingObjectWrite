<%@page import="com.akhilesh.webapp.entity.Customer"%>
<%@page import="com.akhilesh.webapp.dao.impl.CustomerDAOImpl"%>
<%@page import="com.akhilesh.webapp.dao.CustomerDAO"%>
<h1>Update Customer Page</h1>
<%
    CustomerDAO customerDAO = new CustomerDAOImpl();
    if (request.getMethod().equalsIgnoreCase("post")) {
        customerDAO.deleteCustomer(Integer.parseInt(request.getParameter("empid").trim()));
        Customer customer = new Customer();
        customer.setId(Integer.parseInt(request.getParameter("empid")));
        customer.setFirstName(request.getParameter("firstName"));
        customer.setLastName(request.getParameter("lastName"));
        customer.setStatus(request.getParameter("status") != null);
        customerDAO.insert(customer);
        out.println("Update Successful");
        response.sendRedirect("index.jsp");
    } else {
        out.println("<h1>Unauthorized access</h1>");
    }
%>
