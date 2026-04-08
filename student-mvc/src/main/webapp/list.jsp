<%@ page import="java.util.*, com.pojo.Student" %>

<html>
<head>
<title>Student List</title>

<style>
body {
    font-family: Arial, sans-serif;
    background: #f5f6fa;
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 50px 20px;
    margin: 0;
}

h2 {
    color: #333;
    margin-bottom: 25px;
}

table {
    border-collapse: collapse;
    width: 80%;
    max-width: 800px;
    box-shadow: 0 0 15px rgba(0,0,0,0.1);
    background: white;
    border-radius: 8px;
    overflow: hidden;
}

th, td {
    padding: 12px 15px;
    text-align: center;
    border-bottom: 1px solid #ddd;
}

th {
    background: #3498db;
    color: white;
    font-size: 16px;
}

tr:nth-child(even) {
    background: #f2f2f2;
}

tr:hover {
    background: #d1e7fd;
}

td {
    font-size: 14px;
}

.no-data {
    text-align: center;
    font-style: italic;
    color: #888;
}

a {
    display: inline-block;
    margin-top: 20px;
    text-decoration: none;
    color: #3498db;
    font-weight: bold;
    padding: 10px 20px;
    border: 1px solid #3498db;
    border-radius: 5px;
    transition: 0.3s;
}

a:hover {
    background: #3498db;
    color: white;
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
    <td colspan="4" class="no-data">No Data Found</td>
</tr>
<%
}
%>

</table>

<a href="index.jsp">Add New Student</a>

</body>
</html>
