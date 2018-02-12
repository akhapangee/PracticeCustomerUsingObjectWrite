<%-- 
    Document   : index
    Created on : Jan 1, 2018, 9:21:25 PM
    Author     : Akhilesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="SITE_URL" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Default Home Screen!</h1>
        
        <h1>Go to: <a href="${SITE_URL}/customer">CUSTOMER SECTION</a></h1>

    </body>
</html> 