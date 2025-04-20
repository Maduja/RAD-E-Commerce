<%@page import="java.sql.SQLException"%>
<%@page import="app.classes.DbConnector"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css.css">
    
    <title>Admin Panel</title>
    <style>
body {
    background-color: #f4f4f4;
    font-family: 'Arial', sans-serif;
    margin: 0;
    padding: 0;
}



h2 {
    padding: 5px;
    background-color: #007bff;
    color: white;
    margin: 0;
    border-radius: 3px;
    text-align: center;
}

form {
    background-color: #ffffff;
    padding: 20px;
    margin: 10px auto;
    max-width: 600px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0,0,0,0.1);
}

label {
    display: block;
    margin-bottom: 8px;
    font-weight: bold;
}

input[type="number"],
input[type="text"],
textarea {
    width: calc(80% - 22px);
    padding: 5px;
    margin-bottom: 12px;
    border: 1px solid #ddd;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type="submit"] {
    background-color: #007bff;
    color: white;
    border: none;
    padding: 10px 20px;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
}

input[type="submit"]:hover {
    background-color: #0056b3;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

table, th, td {
    border: 1px solid #ddd;
}

th, td {
    padding: 12px;
    text-align: left;
}

th {
    background-color: #007bff;
    color: white;
}

tr:nth-child(even) {
    background-color: #f2f2f2;
}

.delete-button, .edit-button {
    border: none;
    background: none;
    cursor: pointer;
    padding: 5px 10px;
    font-size: 14px;
}

.delete-button {
    color: #dc3545;
}

.edit-button {
    color: #007bff;
}

.delete-button:hover, .edit-button:hover {
    text-decoration: underline;
}

    </style>
</head>
<body>
    <header>
        <nav class="navbar">
            <div class="logo"><img src="images/rw.png" alt="Company Logo" width="50%"></div>
            <ul class="nav-links">
                <li><a href="adminpannel1.jsp"><b>Admin</b></a></li>
                <li><a href="products.jsp"><b>Products</b></a></li>
                <li><a href="logout" class="btn btn-danger"><b>Logout</b></a></li>
                
            </ul>
        </nav>
    </header>
    <hr style="height:2px;border-width:0;color:gray;background-color:blue">
    
    <h2><b>Add New Product</b></h2>
    <form action="addProduct.jsp" method="post">
        <label for="id"><b>ID:</b></label>
        <input type="number" id="id" name="id" required><br>
        
        <label for="name"><b>Name:</b></label>
        <input type="text" id="name" name="name" required><br>
        
        <label for="description"><b>Description:</b></label>
        <textarea id="description" name="description" rows="4" cols="50" required></textarea><br>
        
        <label for="price"><b>Price:</b></label>
        <input type="number" id="price" name="price" step="0.01" required><br>
        
        <label for="image_url"><b>Image URL:</b></label>
        <input type="text" id="image_url" name="image_url" required><br>
        
        <input type="submit" value="Add Product">
    </form>

</body>
</html>
