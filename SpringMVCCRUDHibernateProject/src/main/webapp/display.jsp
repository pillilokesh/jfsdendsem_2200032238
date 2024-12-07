<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Details</title>
    <style>
</style>
</head>
<body>
    <h2>Employee Details</h2>
    <div class="navbar">
         <a href="home">Home</a>&nbsp;&nbsp;
        <a href="addemp">Add Employee</a>&nbsp;&nbsp;
        <a href="viewallemps">View All Employees</a>&nbsp;&nbsp;
        <a href="updateemp">Update Employee</a>&nbsp;&nbsp;
        <a href="deleteemp">Delete Employee</a>&nbsp;&nbsp;
    </div>

    <c:choose>
        <c:when test="${not empty emp}">
            <h3 align="center">Details of Employee ID: <c:out value="${emp.id}" /></h3>
            <table align="center">
                <tr>
                    <th>ID</th>
                    <td><c:out value="${emp.id}" /></td>
                </tr>
                <tr>
                    <th>Name</th>
                    <td><c:out value="${emp.name}" /></td>
                </tr>
                <tr>
                    <th>Gender</th>
                    <td><c:out value="${emp.gender}" /></td>
                </tr>
                <tr>
                    <th>Date of Birth</th>
                    <td><c:out value="${emp.dateofbirth}" /></td>
                </tr>
                <tr>
                    <th>Department</th>
                    <td><c:out value="${emp.department}" /></td>
                </tr>
                <tr>
                    <th>Salary</th>
                    <td><c:out value="${emp.salary}" /></td>
                </tr>
                <tr>
                    <th>Location</th>
                    <td><c:out value="${emp.location}" /></td>
                </tr>
                <tr>
                    <th>Email</th>
                    <td><c:out value="${emp.email}" /></td>
                </tr>
                <tr>
                    <th>Contact</th>
                    <td><c:out value="${emp.contact}" /></td>
                </tr>
            </table>
        </c:when>
        <c:otherwise>
            <h3 align="center">Employee not found for the given ID.</h3>
        </c:otherwise>
    </c:choose>
</body>
</html>