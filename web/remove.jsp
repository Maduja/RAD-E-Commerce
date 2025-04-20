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


hr {
    height: 5px;
    border-width: 0;
    color: gray;
    background-color: blue;
}


table {
    width: 90%;
    margin: 20px auto;
    border-collapse: collapse;
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
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
    color: #fff;
}

tr:nth-child(even) {
    background-color: #f9f9f9;
}

tr:hover {
    background-color: #f1f1f1;
}


.delete-button, .edit-button {
    border: none;
    background: none;
    cursor: pointer;
    padding: 5px 10px;
    font-size: 14px;
    border-radius: 4px;
}

.delete-button {
    color: #dc3545;
}

.edit-button {
    color: #007bff;
}

.delete-button:hover, .edit-button:hover {
    text-decoration: underline;
    background-color: #f1f1f1;
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
    <hr style="height:5px;border-width:0;color:gray;background-color:blue">
    
    
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Description</th>
                <th>Price</th>
                <th>Image URL</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <% 
                
                Connection conn = null;
                Statement stmt = null;
                ResultSet rs = null;
                try {
                    conn = DbConnector.getConnection();
                    stmt = conn.createStatement();
                    String sql = "SELECT * FROM products";
                    rs = stmt.executeQuery(sql);
                    while (rs.next()) {
                        out.println("<tr>");
                        out.println("<td>" + rs.getInt("id") + "</td>");
                        out.println("<td>" + rs.getString("name") + "</td>");
                        out.println("<td>" + rs.getString("description") + "</td>");
                        out.println("<td>" + rs.getBigDecimal("price") + "</td>");
                        out.println("<td> " + rs.getString("image_url")+ "</td>");
                        out.println("<td>");
                        out.println("<form action='editProduct.jsp' method='get' style='display:inline;'>");
                        out.println("<input type='hidden' name='id' value='" + rs.getInt("id") + "'>");
                        out.println("<button type='submit' class='edit-button'>Edit</button>");
                        out.println("</form>");
                        out.println("<form action='deleteProduct.jsp' method='post' style='display:inline;'>");
                        out.println("<input type='hidden' name='id' value='" + rs.getInt("id") + "'>");
                        out.println("<button type='submit' class='delete-button'>Delete</button>");
                        out.println("</form>");
                        out.println("</td>");
                        out.println("</tr>");
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    try { if (rs != null) rs.close(); } catch (SQLException e) { }
                    try { if (stmt != null) stmt.close(); } catch (SQLException e) { }
                    try { if (conn != null) conn.close(); } catch (SQLException e) { }
                }
            %>
        </tbody>
    </table>
</body>
</html>
