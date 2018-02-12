<%@include file="shared/header.jsp" %>
<h1>Delete Customer</h1>
<form method="post" action="deleteAction.jsp">
    
    <div>
        <label>Are you sure to delete id? </label>
        <input type="text" name="deleteId" value="<%=request.getParameter("id")%>" readonly /><br>
        <button type="submit">Yes</button>
            
    </div>
</form>

<%@include file="shared/footer.jsp" %>