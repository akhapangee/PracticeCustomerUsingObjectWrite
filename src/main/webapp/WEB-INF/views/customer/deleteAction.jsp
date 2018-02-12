<%@page import="com.akhilesh.webapp.dao.impl.CustomerDAOImpl"%>
<%@page import="com.akhilesh.webapp.dao.CustomerDAO"%>
<h1>Update Customer Page</h1>
<%
    CustomerDAO customerDAO = new CustomerDAOImpl();
        customerDAO.deleteCustomer(Integer.parseInt(request.getParameter("deleteId")));
        out.println("Delete Successful");
        response.sendRedirect("index.jsp");
%>
