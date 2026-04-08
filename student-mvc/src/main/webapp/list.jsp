<%@ page import="java.util.*, com.pojo.Student" %>

<html>
<head>
<title>Student List</title>

<style>
body {
    font-family: Arial;
    background: #f5f6fa;
    text-align: center;
}

table {
    margin: auto;
    border-collapse: collapse;
    width: 70%;
}

th {
    background: #3498db;
    color: white;
    padding: 10px;
}

td {
    padding: 10px;
    border: 1px solid #ddd;
}

tr:nth-child(even) {
    background: #f2f2f2;
}

a {
    text-decoration: none;
    color: #2c3e50;
}
</style>

</head>

<body>

<h2>Student List</h2>

<table>
<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Marks</th>
    <th>Age</th>
</tr>

<%
List<Student> list = (List<Student>) request.getAttribute("students");

if(list != null && !list.isEmpty()){
    for(Student s : list){
%>

<tr>
    <td><%= s.getId() %></td>
    <td><%= s.getName() %></td>
    <td><%= s.getMarks() %></td>
    <td><%= s.getAge() %></td>
</tr>

<%
    }
} else {
%>

<tr>
    <td colspan="4">No Data Found</td>
</tr>

<%
}
%>

</table>

<br><br>
<a href="index.jsp">Add New Student</a>

</body>
</html>