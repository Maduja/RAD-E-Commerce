<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="app.classes.DbConnector" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>BuyBliss</title>
        <link rel="stylesheet" href="styles.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    </head>
    <body>
        <header>
            <nav class="navbar">
                <div class="logo"><img src="images/rw.png" alt="Company Logo" width="50%"></div>
                <ul class="nav-links">
                    
                    <li><a href="#" id="cart-link"><i class="fas fa-shopping-cart"></i><b> Cart </b><span id="cart-count">0</span></a></li>
                    <li><a href="about_us.jsp"><b>About</b></a></li>
                    <li><a href="contact.jsp"><b>Contact</b></a></li>
                    <li><a href="logout" class="btn btn-danger"><b>Logout</b></a></li>
                </ul>
            </nav>
        </header>
         <hr style="height:5px;border-width:0;color:gray;background-color:blue">

        <section class="products" id="products">
            <h2 style="text-align:center; color: #0073e6; font-size:32px; margin-bottom: 20px">Our Products</h2>
            <div class="product-list">
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
                            int id = rs.getInt("id");
                            String name = rs.getString("name");
                            String description = rs.getString("description");
                            double price = rs.getDouble("price");
                            String imageUrl = rs.getString("image_url");
                %>
                <div class="product">
                    <img src="<%= imageUrl%>" alt="<%= name%>">
                    <h2><%= name%></h2>
                    <p><%= description%></p>
                    <p>$<%= price%></p>
                    <button type="button" class="product-button" data-id="<%= id%>" data-name="<%= name%>" data-price="<%= price%>">Add to Cart</button>
                </div>
                <%
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    } finally {
                        if (rs != null) {
                            try {
                                rs.close();
                            } catch (SQLException e) {
                                e.printStackTrace();
                            }
                        }
                        if (stmt != null) {
                            try {
                                stmt.close();
                            } catch (SQLException e) {
                                e.printStackTrace();
                            }
                        }
                        if (conn != null) {
                            try {
                                conn.close();
                            } catch (SQLException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                %>
            </div>
        </section>

        <div id="cart-modal" class="cart-modal">
            <div class="cart-modal-content">
                <span class="close">&times;</span>
                <h2>Your Cart</h2>
                <ul id="cart-items">
                </ul>
                <p>Total: $<span id="cart-total">0.00</span></p>
                <button id="pay-now" class="pay-now-button">Pay Now</button>
            </div>
        </div>

        <footer>
            <p>&copy; 2024 BuyBliss. All rights reserved.</p>
        </footer>

        <script>
            $(document).ready(function () {
                let cartCount = 0;
                let cartTotal = 0.00;
                const cartItems = [];

                $('.product-button').click(function () {
                    const productId = $(this).data('id');
                    const productName = $(this).data('name');
                    const productPrice = parseFloat($(this).data('price'));

                    const existingItem = cartItems.find(item => item.id === productId);

                    if (existingItem) {
                        alert('Product already in cart. You can increase the quantity in the cart.');
                        return;
                    }

                    cartItems.push({
                        id: productId,
                        name: productName,
                        price: productPrice,
                        quantity: 1
                    });

                    cartCount++;
                    $('#cart-count').text(cartCount);

                    cartTotal += productPrice;
                    updateCartModal();
                });

                function updateCartModal() {
                    const cartItemsList = $('#cart-items');
                    cartItemsList.empty();
                    cartItems.forEach(function (item, index) {
                        cartItemsList.append(
                                '<li>' + item.name + ' - $' + item.price.toFixed(2) +
                                ' x <button class="decrease-quantity" data-index="' + index + '">-</button>' +
                                ' ' + item.quantity + ' ' +
                                '<button class="increase-quantity" data-index="' + index + '">+</button>' +
                                '</li>'
                                );
                    });
                    $('#cart-total').text(cartTotal.toFixed(2));
                }

                $(document).on('click', '.increase-quantity', function () {
                    const itemIndex = $(this).data('index');
                    cartItems[itemIndex].quantity++;
                    cartTotal += cartItems[itemIndex].price;
                    updateCartModal();
                });

                $(document).on('click', '.decrease-quantity', function () {
                    const itemIndex = $(this).data('index');
                    if (cartItems[itemIndex].quantity > 1) {
                        cartItems[itemIndex].quantity--;
                        cartTotal -= cartItems[itemIndex].price;
                        updateCartModal();
                    } else {
                        alert('Quantity cannot be less than 1.');
                    }
                });

                $('#cart-link').click(function (event) {
                    event.preventDefault();
                    $('#cart-modal').show();
                });

                $('.close').click(function () {
                    $('#cart-modal').hide();
                });

                $(window).click(function (event) {
                    if ($(event.target).is('#cart-modal')) {
                        $('#cart-modal').hide();
                    }
                });

                $('#pay-now').click(function () {
                    alert('Payment successful!');
                    resetCart();
                });

                function resetCart() {
                    cartCount = 0;
                    cartTotal = 0.00;
                    cartItems.length = 0;  
                    $('#cart-count').text(cartCount);
                    updateCartModal();
                    $('#cart-modal').hide();
                }
            });
        </script>

        <style>
            .cart-modal {
                display: none;
                position: fixed;
                z-index: 1;
                padding-top: 60px;
                left: 0;
                top: 0;
                width: 100%;
                height: 100%;
                overflow: auto;
                background-color: rgba(0, 0, 0, 0.7); 
                animation: fadeIn 0.3s ease-in-out;
            }

            .cart-modal-content {
                background-color: #ffffff;
                margin: auto;
                padding: 20px;
                border-radius: 10px;
                width: 90%;
                max-width: 500px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
                animation: slideIn 0.3s ease-in-out;
            }

            .close {
                color: #333;
                float: right;
                font-size: 28px;
                font-weight: bold;
                cursor: pointer;
                transition: color 0.2s ease-in-out;
            }

            .close:hover,
            .close:focus {
                color: #0073e6; 
                text-decoration: none;
            }

            h2 {
                color: #0073e6;
                text-align: center;
                margin-bottom: 20px;
            }

            #cart-items {
                list-style-type: none;
                padding: 0;
                margin-bottom: 20px;
                max-height: 200px; 
                overflow-y: auto; 
            }

            #cart-items li {
                padding: 10px;
                border-bottom: 1px solid #ddd;
                display: flex;
                justify-content: space-between;
                align-items: center;
            }

            .increase-quantity, .decrease-quantity {
                background-color: #0073e6;
                color: white;
                border: none;
                padding: 5px 12px;
                cursor: pointer;
                font-size: 14px;
                border-radius: 5px;
                margin: 0 5px;
                transition: background-color 0.2s ease-in-out;
            }

            .increase-quantity:hover, .decrease-quantity:hover {
                background-color: #005bb5;
            }

            .pay-now-button {
                background-color: #28a745;
                color: white;
                padding: 12px 20px;
                border: none;
                cursor: pointer;
                font-size: 16px;
                border-radius: 5px;
                width: 100%;
                transition: background-color 0.2s ease-in-out;
                text-align: center;
            }

            .pay-now-button:hover {
                background-color: #218838;
            }

            @keyframes fadeIn {
                from {opacity: 0;}
                to {opacity: 1;}
            }

            @keyframes slideIn {
                from {transform: translateY(-50px);}
                to {transform: translateY(0);}
            }

        </style>
    </body>
</html>
