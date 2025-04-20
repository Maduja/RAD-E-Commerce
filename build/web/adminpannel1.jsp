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
            background-color: lightblue;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        
        

        form {
            margin: 20px;
            text-align: center;
        }

        .button {
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            color: white;
            padding: 15px 25px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 10px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .button:hover {
            background-color: #0056b3;
        }

        hr {
            height: 5px;
            border-width: 0;
            color: gray;
            background-color: blue;
        }
        
        h1{
            text-align: center;
            color: red; 
        }
        .container {
            display: flex;
            justify-content: center;
        }
    </style>
</head>
<body>
    <header>
        <nav class="navbar">
            <div class="logo"><img src="images/rw.png" alt="Company Logo" width="50%"></div>
            <ul class="nav-links">
                <li><a href="products.jsp"><b>Products</b></a></li>
                <li><a href="logout" class="btn btn-danger"><b>Logout</b></a></li>
            </ul>
        </nav>
    </header>
    
    <hr style="height:5px;border-width:0;color:gray;background-color:blue">
    <br>
    <h1>Welcome to the Admin pannel</h1>
    <br>
    <form>
        <a href="add.jsp" class="button">Add New Product</a>
        <a href="remove.jsp" class="button">Edit or Delete Product</a>
    </form>
    <div class="container">
  <img src="images/admin.jpg" alt="admin logo" width="20%">
</div>

    
</body>
</html>
