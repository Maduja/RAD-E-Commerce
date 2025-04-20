<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BuyBliss</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        .cascading-right { margin-left: -50px; }
        @media (max-width: 991.98px) { .cascading-right { margin-left: 0; } }
        .image-container img { width: 100%; height: auto; max-width: 500px; }
        #img { animation: move 2.2s infinite ease-in-out; }
        @keyframes move { 0% { transform: translateY(0); } 50% { transform: translateY(-20px); } 100% { transform: translateY(0); } }
    </style>
</head>
<body>
    <section class="text-center text-lg-start">
        <div class="container py-4">
            <nav class="navbar navbar-expand-lg navbar-light bg-white">
                <div class="container">
                    <a class="navbar-brand d-flex justify-content-between" href="index.html">
                        <img src="images/logo1.png" alt="Company Logo" width="80%">
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse navbar-light" id="navbarNav"></div>
                </div>
            </nav>
            <div class="row g-0 align-items-center">
                <div class="col-lg-6 mb-5 mb-lg-0" id="img">
                    <img src="images/bg.png" class="w-180 d-none d-lg-block" alt="" style="width: 500px;height: 400px" />
                </div>
                <div class="col-lg-6 mb-5 mb-lg-0">
                    <div class="card cascading-right" style="background: hsla(0, 0%, 100%, 0.55); backdrop-filter: blur(30px);">
                        <div class="card-body p-5 shadow-5 text-center">
                            <h2 class="fw-bold mb-5">Sign In</h2>
                            <%
                                
                                String cookieUsername = null;
                                Cookie[] cookies = request.getCookies();
                                if (cookies != null) {
                                    for (Cookie cookie : cookies) {
                                        if ("username".equals(cookie.getName())) {
                                            cookieUsername = cookie.getValue();
                                            break;
                                        }
                                    }
                                }
                                
                                if (request.getParameter("s") != null) {
                                    if (request.getParameter("s").equals("0")) {
                            %>
                            <h6 class="text-danger">Incorrect username or password.</h6>
                            <%
                                    }
                                }
                            %>
                            <form action="login.jsp" method="POST">
                                <div class="form-outline mb-4">
                                    <input type="email" id="emailInput" name="username" class="form-control" placeholder="Email address" autocomplete="off" value="<%= cookieUsername != null ? cookieUsername : "" %>" required />
                                </div>
                                <div class="form-outline mb-4">
                                    <input type="password" id="passwordInput" name="password" class="form-control" placeholder="Password" autocomplete="off" required />
                                </div>
                                <button type="submit" class="btn btn-primary btn-block mb-4">Sign In</button>
                                <div class="text-center">
                                    <p>Don't have an account? <a href="signup.jsp">Sign up</a></p>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <footer class="bg-dark text-light text-center py-2">
        <div class="container">
            <p>&copy; 2024 BuyBliss. All rights reserved.</p>
        </div>
    </footer>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
