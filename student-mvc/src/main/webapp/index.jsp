<html>
<head>
<title>Add Student</title>

<style>
body {
    font-family: Arial;
    background: #f5f6fa;
    text-align: center;
}

.container {
    margin-top: 80px;
    background: white;
    padding: 30px;
    width: 350px;
    margin-left: auto;
    margin-right: auto;
    border-radius: 10px;
    box-shadow: 0 0 10px #ccc;
}

input {
    width: 90%;
    padding: 10px;
    margin: 10px 0;
}

button {
    background: #3498db;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
}

a {
    text-decoration: none;
    color: #2c3e50;
}
</style>

</head>

<body>

<div class="container">
<h2>Add Student</h2>

<form action="add" method="post">
    Name:<br>
    <input type="text" name="name"><br>

    Marks:<br>
    <input type="number" name="marks"><br>
    Age:<br>
    <input type="number" name="age"><br>

    <button type="submit">Save</button>
</form>

<br>
<a href="list">View Students</a>

</div>

</body>
</html>