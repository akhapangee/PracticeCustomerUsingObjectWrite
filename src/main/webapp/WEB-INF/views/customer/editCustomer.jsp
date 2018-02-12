<%@page import="com.akhilesh.webapp.entity.Customer"%>
<%@page import="com.akhilesh.webapp.dao.impl.CustomerDAOImpl"%>
<%@page import="com.akhilesh.webapp.dao.CustomerDAO"%>
<%@include file="shared/header.jsp" %>
<h1>Edit customer</h1>
<%
    CustomerDAO customerDAO = new CustomerDAOImpl();
    Customer customer = customerDAO.getById(Integer.parseInt(request.getParameter("id")));
%>
<form method="post" action="updateAction.jsp">
    <table border="0">
        <tr>
            <td>ID: </td>
            <td><input type="text" name ="empid" value=<%=request.getParameter("id")%> readonly />  </td>
        </tr>
        <tr>
            <td>First Name: </td>
            <td><input type="text" name ="firstName" required="required" value="<%=customer.getFirstName()%>"/></td>
        </tr>
        <tr>
            <td>Last Name: </td>
            <td><input type="text" name ="lastName" required="required" value="<%=customer.getLastName()%>"/></td>
        </tr>
        <tr>
            <td>Status: </td>
            <td>  <input type="checkbox" name ="status" 
                         <%if(customer.isStatus()){%>
                         checked
                         <%
                             }
                         %>
                         
                         /></td>
        </tr>
    </table>

    <button type="submit">Update</button>
</form>
<%@include file="shared/footer.jsp" %>