<%@page import="app.classes.EmailSender"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>about</title>
        <link rel="stylesheet" href="css.css">
    </head>

    <body>
        <header>
            <nav class="navbar">
                <div class="logo"><img src="images/rw.png" alt="Company Logo" width="50%"></div>
                <ul class="nav-links">
                    
                    <li><a href="products.jsp"><b>Products</b></a></li>
                    <li><a href="contact.jsp"><b>Contact</b></a></li>
                    <li><a href="logout" class="btn btn-danger"><b>Logout</b></a></li>
                </ul>
            </nav>
        </header>
        <hr style="height:5px;border-width:0;color:gray;background-color:blue">

        <div class="about">

            <div class="about_us" id="about_us">
                <h2>About Us</h2>
                <p>
                    At BuyBliss, we believe that shopping should be more than just a transaction it should be an experience that brings joy, value, and convenience to your life. As a proud local business, we are committed to offering a diverse range of high quality products at unbeatable prices, ensuring that you can shop smart and live better every day.<br><br>
                    Our mission is to create a seamless and enjoyable shopping experience for our customers, where satisfaction is not just a promise but a guarantee. We meticulously curate our product selection to meet the unique needs and tastes of our community, combining the latest trends with timeless essentials.<br><br>
                    Whether you're searching for the latest gadgets, everyday essentials, or that perfect gift, BuyBliss is your one stop destination. We are passionate about helping you discover great deals and exceptional products, all while supporting our local economy.<br><br>
                    Join us on our journey to redefine local shopping. With BuyBliss, you can shop with confidence, knowing that you are getting the best value, while contributing to the growth and success of our local community. Because at BuyBliss, we don't just sell products we enrich lives.<br><br>
                    Shop Smart, Live Better with BuyBliss.<br>
                </p>
            </div>

        </div>

        <footer>
            <p>&copy; 2024 BuyBliss. All rights reserved.</p>
        </footer>
    </body>
</html>
