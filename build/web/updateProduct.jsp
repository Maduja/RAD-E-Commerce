<%@page import="java.sql.SQLException"%>
<%@page import="app.classes.DbConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html>
<html>
<head>
    <title>Update Product</title>
    <script>
        function redirectAfterDelay(url, delay) {
            setTimeout(function() {
                window.location.href = url;
            }, delay);
        }
    </script>
</head>
<body>
    <%
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String price = request.getParameter("price");
        String imageUrl = request.getParameter("image_url");

        Connection conn = null;
        PreparedStatement pstmt = null;
        try {
            conn = DbConnector.getConnection();
            String sql = "UPDATE products SET name = ?, description = ?, price = ?, image_url = ? WHERE id = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, name);
            pstmt.setString(2, description);
            pstmt.setBigDecimal(3, new java.math.BigDecimal(price));
            pstmt.setString(4, imageUrl);
            pstmt.setInt(5, Integer.parseInt(id));
            int rowsUpdated = pstmt.executeUpdate();
            if (rowsUpdated > 0) {
    %>
                <h2 style="text-align: center; padding-top: 50px">Product updated successfully.</h2>
                <script>
                    redirectAfterDelay("remove.jsp", 2000); 
                </script>
    <%
            } else {
    %>
                <h2>Product update failed.</h2>
    <%
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try { if (pstmt != null) pstmt.close(); } catch (SQLException e) { }
            try { if (conn != null) conn.close(); } catch (SQLException e) { }
        }
    %>
</body>
</html>
