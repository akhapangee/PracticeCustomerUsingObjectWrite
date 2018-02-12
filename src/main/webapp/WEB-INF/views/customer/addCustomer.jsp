<%@include file="../shared/header.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="SITE_URL" value="${pageContext.request.contextPath}" />
<h1>Add customer</h1>
<form method="post" action="${SITE_URL}/customer/saveAction.jsp">
     <table border="0">
         <tr>
            <td>First Name: </td>
            <td><input type="text" name ="firstName" required="required" autofocus="autofocus"/></td>
        </tr>
         <tr>
            <td>Last Name: </td>
            <td><input type="text" name ="lastName" required="required" /></td>
        </tr>
         <tr>
            <td>Status: </td>
            <td>  <input type="checkbox" name ="status"/></td>
        </tr>
    </table>
     <button type="submit">Save</button>
</form>
<%@include file="../shared/footer.jsp" %>