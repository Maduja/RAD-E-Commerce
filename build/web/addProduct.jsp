<%@ page import="java.sql.*, javax.servlet.http.*, javax.servlet.*" %>
<%@ page import="app.classes.DbConnector" %>
<%
    String idStr = request.getParameter("id");
    String name = request.getParameter("name");
    String description = request.getParameter("description");
    String priceStr = request.getParameter("price");
    String imageUrl = request.getParameter("image_url");

    Connection conn = null;
    PreparedStatement stmt = null;

    try {
        conn = DbConnector.getConnection();

        int id = Integer.parseInt(idStr);
        java.math.BigDecimal price = new java.math.BigDecimal(priceStr);

        String checkSql = "SELECT COUNT(*) FROM products WHERE id = ?";
        PreparedStatement checkStmt = conn.prepareStatement(checkSql);
        checkStmt.setInt(1, id);
        ResultSet checkRs = checkStmt.executeQuery();
        checkRs.next();
        if (checkRs.getInt(1) > 0) {
            out.println("Product with this ID already exists.");
        } else {
            String sql = "INSERT INTO products (id, name, description, price, image_url) VALUES (?, ?, ?, ?, ?)";
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            stmt.setString(2, name);
            stmt.setString(3, description);
            stmt.setBigDecimal(4, price);
            stmt.setString(5, imageUrl);
            
            int rowsAffected = stmt.executeUpdate();
            if (rowsAffected > 0) {
                out.println("Product added successfully.");
            } else {
                out.println("Failed to add product.");
            }
        }
    } catch (SQLException e) {
        e.printStackTrace();
        out.println("Error: " + e.getMessage());
    } finally {
        try { if (stmt != null) stmt.close(); } catch (SQLException e) { }
        try { if (conn != null) conn.close(); } catch (SQLException e) { }
    }
%>

<meta http-equiv="refresh" content="2;url=adminpannel1.jsp">
