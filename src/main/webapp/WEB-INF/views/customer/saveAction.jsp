<%@page import="com.akhilesh.webapp.entity.Customer"%>
<%@page import="com.akhilesh.webapp.dao.impl.CustomerDAOImpl"%>
<%@page import="com.akhilesh.webapp.dao.CustomerDAO"%>
<h1>Save Customer Page</h1>
<%
    CustomerDAO customerDAO = new CustomerDAOImpl();
    if (request.getMethod().equalsIgnoreCase("post")) {
        Customer customer = new Customer();
        customer.setId(customerDAO.getHighestEmpId()+1);
        customer.setFirstName(request.getParameter("firstName"));
        customer.setLastName(request.getParameter("lastName"));
        customer.setStatus(request.getParameter("status") != null);
        customerDAO.insert(customer);
        response.sendRedirect("index.jsp");
    }else{
        out.println("<h1>Unauthorized access</h1>");
    }
%>
