<%@ page import="java.sql.*, javax.servlet.http.*, javax.servlet.*" %>
<%@ page import="app.classes.DbConnector" %>
<%
    String idStr = request.getParameter("id");

    Connection conn = null;
    PreparedStatement stmt = null;

    try {
        conn = DbConnector.getConnection();

        int id = Integer.parseInt(idStr);

        String sql = "DELETE FROM products WHERE id = ?";
        stmt = conn.prepareStatement(sql);
        stmt.setInt(1, id);
        
        int rowsAffected = stmt.executeUpdate();
        if (rowsAffected > 0) {
            out.println("Product deleted successfully.");
            
        } else {
            out.println("Failed to delete product or product not found.");
        }
    } catch (SQLException e) {
        e.printStackTrace();
        out.println("Error: " + e.getMessage());
    } finally {
        try { if (stmt != null) stmt.close(); } catch (SQLException e) { }
        try { if (conn != null) conn.close(); } catch (SQLException e) { }
    }
%>


<meta http-equiv="refresh" content="2;url=remove.jsp">