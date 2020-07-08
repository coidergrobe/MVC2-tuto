<%-- 
    Document   : admin
    Created on : Jul 8, 2020, 3:19:24 PM
    Author     : ntidaking
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
    </head>
    <body>
        <h1>Welcome, ${sessionScope.loginUser}}</h1>
        <form action="ManageServlet" method="post">
            Employee ID: <input type="text" name="empid" value="${employee.empid}"/>
            First Name: <input type="text" name="empid" value="${employee.firstname}"/>
            Last Name: <input type="text" name="empid" value="${employee.lastname}"/>
            Email: <input type="text" name="empid" value="${employee.email}"/>
            
            <input type="submit" name="action" value="ADD"/>
            <input type="submit" name="action" value="EDIT"/>
            <input type="submit" name="action" value="DELETE"/>
            <input type="submit" name="action" value="VIEW"/>
        </form>
            
            <table>
                <thead>Employee ID</thead>
                <thead>First Name</thead>
                <thead>Last Name</thead>
                <thead>Email</thead>
                <c:forEach var="emp" items="${getAllEmployee}">
                    <tbody>
                        <tr>${emp.empid}</tr>
                        <tr>${emp.firstname}</tr>
                        <tr>${emp.lastname}</tr>
                        <tr>${emp.email}</tr>
                    </tbody>
                </c:forEach>
            </table>
    </body>
</html>
