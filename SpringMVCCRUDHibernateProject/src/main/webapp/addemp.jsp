<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
    <title>Spring MVC</title>
    <style>
          </style>
</head>
<body>
    <h2>Spring MVC CRUD Operations with ORM/Hibernate</h2>
    <div class="navbar">
         <a href="home">Home</a>
        <a href="addemp">Add Employee</a>
        <a href="viewallemps">View All Employees</a>
        <a href="updateemp">Update Employee</a>
        <a href="deleteemp">Delete Employee</a>
    </div>
    <h3 style="text-align: center;"><u>Add Employee</u></h3>
    <div class="form-container">
        <form method="post" action="insertemp">
            <table>
                <tr>
                    <td><label for="eid">Enter ID</label></td>
                    <td><input type="number" id="eid" name="eid" required/></td>
                </tr>
                <tr>
                    <td><label for="ename">Enter Name</label></td>
                    <td><input type="text" id="ename" name="ename" required/></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="egender" value="MALE" required/>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="egender" value="FEMALE" required/>
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="egender" value="OTHERS" required/>
                        <label for="others">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="edob">Enter Date of Birth</label></td>
                    <td><input type="date" id="edob" name="edob" required/></td>
                </tr>
                <tr>
                    <td><label for="edept">Select Department</label></td>
                    <td>
                        <select id="edept" name="edept" required>
                            <option value="">---Select---</option>
                            <option value="TECHNICAL">Technical</option>
                            <option value="MARKETING">Marketing</option>
                            <option value="SALES">Sales</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="esalary">Enter Salary</label></td>
                    <td><input type="number" id="esalary" name="esalary" step="0.1" required/></td>
                </tr>
                <tr>
                    <td><label for="elocation">Enter Location</label></td>
                    <td><input type="text" id="elocation" name="elocation" required/></td>
                </tr>
                <tr>
                    <td><label for="eemail">Enter Email ID</label></td>
                    <td><input type="email" id="eemail" name="eemail" required/></td>
                </tr>
                <tr>
                    <td><label for="econtact">Enter Contact</label></td>
                    <td><input type="number" id="econtact" name="econtact" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Add Employee"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
