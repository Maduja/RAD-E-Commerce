<%@page import="java.sql.SQLException"%>
<%@page import="app.classes.DbConnector"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Product</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        form {
            margin: 20px;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }
        input[type="text"],
        input[type="number"],
        textarea {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        textarea {
            resize: vertical;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 15px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin-top: 10px;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h2>Edit Product</h2>
    <%
        String id = request.getParameter("id");
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        try {
            conn = DbConnector.getConnection();
            stmt = conn.createStatement();
            String sql = "SELECT * FROM products WHERE id = " + id;
            rs = stmt.executeQuery(sql);
            if (rs.next()) {
    %>
    <form action="updateProduct.jsp" method="post">
        <input type="hidden" name="id" value="<%= rs.getInt("id") %>">
        
        <label for="name"><b>Name:</b></label><br>
        <input type="text" id="name" name="name" value="<%= rs.getString("name") %>" required><br>
        
        <label for="description"><b>Description:</b></label><br>
        <textarea id="description" name="description" rows="4" cols="50" required><%= rs.getString("description") %></textarea><br>
        
        <label for="price"><b>Price:</b></label><br>
        <input type="number" id="price" name="price" step="0.01" value="<%= rs.getBigDecimal("price") %>" required><br>
        
        <label for="image_url"><b>Image URL:</b></label><br>
        <input type="text" id="image_url" name="image_url" value="<%= rs.getString("image_url") %>" required><br><br>
        
        <input type="submit" value="Update Product">
    </form>
    <%
            } else {
                out.println("Product not found.");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try { if (rs != null) rs.close(); } catch (SQLException e) { }
            try { if (stmt != null) stmt.close(); } catch (SQLException e) { }
            try { if (conn != null) conn.close(); } catch (SQLException e) { }
        }
    %>
</body>
</html>
