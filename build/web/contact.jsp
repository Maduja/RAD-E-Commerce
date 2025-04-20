<%@page import="app.classes.EmailSender"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>contact</title>
    <link rel="stylesheet" href="css.css">
</head>

<%
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        String name = request.getParameter("name");
        String message = request.getParameter("message");
        String senderEmail = request.getParameter("email");
        String subject = "Contact Form";
        if(EmailSender.sendEmail(senderEmail, subject, message)){
            %>
            <script>
                alert("Your Message Send Successfully.")
            </script>
            <%
        }
    }
%>
<body>
    <header>
        <nav class="navbar">
            <div class="logo"><img src="images/rw.png" alt="Company Logo" width="50%"></div>
            <ul class="nav-links">
                
                <li><a href="products.jsp"><b>Products</b></a></li>
                <li><a href="about_us.jsp"><b>About</b></a></li>
                <li><a href="logout" class="btn btn-danger"><b>Logout</b></a></li>
                
            </ul>
        </nav>
    </header>
    <hr style="height:5px;border-width:0;color:gray;background-color:blue">
    
    <div class="contact">
        <section class="overlay-section">
           
            <div class="contact_us" id="contact_us">
                <h2>Contact Us</h2>
                <form action="about_us.jsp" method="post">
                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name" required>
                     <label for="email">Email:</label>
                    <input type="email" id="name" name="email" required>
                    <label for="message">FeedBack:</label>
                    <textarea id="message" name="message" rows="4" cols="70" required></textarea>
                    <button type="submit">Send</button>
                </form>
            </div>
        </section>
    </div>

    <footer>
        <p>&copy; 2024 BuyBliss. All rights reserved.</p>
    </footer>
</body>
</html>
