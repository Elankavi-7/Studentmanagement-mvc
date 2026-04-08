<html>
<head>
<title>Add Student</title>

<style>
body {
    font-family: Arial, sans-serif;
    background: #f5f6fa;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

.container {
    background: white;
    padding: 30px 40px;
    width: 400px;
    border-radius: 10px;
    box-shadow: 0 0 15px rgba(0,0,0,0.1);
}

h2 {
    text-align: center;
    margin-bottom: 25px;
}

form {
    display: flex;
    flex-direction: column;
}

.form-group {
    display: flex;
    flex-direction: column;
    margin-bottom: 15px;
}

label {
    margin-bottom: 5px;
    font-weight: bold;
}

input {
    padding: 10px;
    font-size: 14px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

button {
    background: #3498db;
    color: white;
    padding: 12px;
    font-size: 16px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin-top: 10px;
}

button:hover {
    background: #2980b9;
}

a {
    display: block;
    text-align: center;
    margin-top: 15px;
    text-decoration: none;
    color: #2c3e50;
    font-weight: bold;
}
</style>

</head>

<body>

<div class="container">
<h2>Add Student</h2>

<form action="add" method="post">
    <div class="form-group">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>
    </div>

    <div class="form-group">
        <label for="marks">Marks:</label>
        <input type="number" id="marks" name="marks" required>
    </div>

    <div class="form-group">
        <label for="age">Age:</label>
        <input type="number" id="age" name="age" required>
    </div>

    <button type="submit">Save</button>
</form>

<a href="list">View Students</a>

</div>

</body>
</html>
