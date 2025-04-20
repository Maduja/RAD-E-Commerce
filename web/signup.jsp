<div>

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
            .cascading-left {
                margin-left: -50px;
            }

            @media (max-width: 991.98px) {
                .cascading-left {
                    margin-left: 0;
                }
            }
            #img {
                animation: move 2.2s infinite ease-in-out;
            }

            @keyframes move {
                0% { transform: translateY(0); }
                50% { transform: translateY(-20px); }
                100% { transform: translateY(0); }
            }
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
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse navbar-light" id="navbarNav">
                            
                        </div>
                    </div>
                </nav>

                <div class="row g-0 align-items-center">
                    <div class="col-lg-6 mb-5 mb-lg-0" id="img">
                        <img src="images/bg.png" class="w-180 d-none d-lg-block" alt="" style="width: 500px;height: 400px" />
                    </div>

                    <div class="col-lg-6 mb-5 mb-lg-0">
                        <div class="card cascading-left"
                             style="background: hsla(0, 0%, 100%, 0.55); backdrop-filter: blur(30px);">
                            <div class="card-body p-5 shadow-5 text-center">
                                <h2 class="fw-bold mb-5">Sign Up</h2>
                                <%
                                    if (request.getParameter("s") != null) {
                                        String message;
                                        if (request.getParameter("s").equals("1")) {
                                            message = "<h6 class='text-success'>You have successfully registered.</h6>";
                                            
                                        } else {
                                            message = "<h6 class='text-danger'>An error occurred. Please register again.</h6>";
                                        }
                                        out.println(message);
                                    }
                                %>

                                <form method="POST" action="registration.jsp">
                                    <div class="row">
                                        <div class="col-md-6 mb-4">
                                            <div class="form-outline">
                                                <input type="text" id="firstnameInput" name="firstname" class="form-control" placeholder="First name" required/>
                                            </div>
                                        </div>
                                        <div class="col-md-6 mb-4">
                                            <div class="form-outline">
                                                <input type="text" id="lastnameInput" name="lastname" class="form-control" placeholder="Last name" required/>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-outline mb-4">
                                        <input type="email" id="emailInput" name="username" class="form-control" placeholder="Email address" required/>
                                    </div>

                                    <div class="form-outline mb-4">
                                        <input type="password" id="passwordInput" name="password" class="form-control" placeholder="Password" required/>
                                    </div>

                                    <button type="submit" class="btn btn-primary btn-block mb-4">
                                        Sign Up
                                    </button>

                                    <div class="text-center">
                                        <p>Already have an account? <a href="index.jsp">Sign in</a></p>
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



</div>