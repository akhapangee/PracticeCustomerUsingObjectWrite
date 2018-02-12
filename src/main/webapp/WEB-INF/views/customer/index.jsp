<%@include file="../shared/header.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<c:set property="SITE_URL" value="${pageContext.request.contextPath}" />--%>
<h1>Customer Home Page!</h1>
<div>
    <a href="addCustomer.jsp" class="button">Add Customer</a>
</div>
<table border="1px solid black" width="100%">
    <tr>
        <th>Id</th>
        <th>First name</th>
        <th>Last Name</th>
        <th>Status</th>
        <th>Action</th>
    </tr>
    <c:forEach var="customer" items="${requestScope.customers}">
        <tr>
            <td>${customer.getId()}</td>
            <td>${customer.getFirstName()}</td>
            <td>${customer.getLastName()}</td>
            <td>${customer.isStatus()}</td>
            <td><a href="editCustomer.jsp?id=${customer.getId()}">Edit</a>&nbsp;&nbsp;&nbsp;&nbsp; 
                <a href="deleteCustomer.jsp?id=${customer.getId()}">Delete</a>&nbsp;&nbsp;&nbsp;&nbsp; 
        </tr>
    </c:forEach>
</table>
<%@include file="../shared/footer.jsp" %>

