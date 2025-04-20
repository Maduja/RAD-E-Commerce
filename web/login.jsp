<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="app.classes.DbConnector"%>
<%@page import="app.classes.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    User user = new User(username, password);
    Connection conn = null;
    try {
        conn = DbConnector.getConnection();
        if (user.authenticate(conn)) {
            String role = user.getRole();
            session.setAttribute("user", user);
            
            
            javax.servlet.http.Cookie usernameCookie = new javax.servlet.http.Cookie("username", username);
            usernameCookie.setMaxAge(60 * 60 * 24 * 7);
            response.addCookie(usernameCookie);
            
            
            if ("admin".equals(role)) {
                response.sendRedirect("adminpannel1.jsp"); 
            } else {
                response.sendRedirect("products.jsp"); 
            }
        } else {
            response.sendRedirect("index.jsp?s=0"); 
        }
    } catch (Exception e) {
        e.printStackTrace();
        response.sendRedirect("index.jsp?s=0"); 
    } finally {
        try { if (conn != null) conn.close(); } catch (SQLException e) { }
    }
%>
