<%@page import="app.classes.DbConnector"%>
<%@page import="app.classes.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String firstname = request.getParameter("firstname");
    String lastname = request.getParameter("lastname");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String role = "customer";

    User user = new User(firstname, lastname, username, password, role);
    if(user.register(DbConnector.getConnection())){
        response.sendRedirect("signup.jsp?s=1");
    } else {
        response.sendRedirect("signup.jsp?s=0");
    }
%>
