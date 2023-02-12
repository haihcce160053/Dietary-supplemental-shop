<%-- 
    Document   : login
    Created on : Feb 12, 2023, 9:09:40 AM
    Author     : huynh chi hai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>FIVESTORE - Dietary supplemental shop</title>
    <link rel="icon" type="image/x-icon" href="HCDATAFILE/img/logo-only.png">
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
    <!-- MDB -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/5.0.0/mdb.min.css" rel="stylesheet" />

    <!-- Jquery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>

    <!-- Style of google button -->
    <style>
        .google-login {
            background-color: #dd4b39;
            color: #fff;
            border-radius: 5px;
            padding: 5px 20px;
            font-size: 15px;
            cursor: pointer;
        }

        .google-login i {
            margin-right: 10px;
        }

        .orther-login {
            display: flex;
            align-items: center;
            justify-content: center;
            margin-top: 20px;
        }

        .login-orther-line {
            width: 50px;
            height: 1px;
            background-color: #ccc;
            margin: 0 10px;
        }

        .login-orther-text {
            color: #333;
        }
    </style>
</head>

<body>
    <header id="page-header">
        <div class="page-container">
            <nav class="navbar navbar-expand-lg" style="background-color: #9c27b0;">
                <div class="container-fluid">
                    <a class="navbar-brand" href="home.jsp"
                        style="color: white; font-size: 25px;"><b>FIVESTORE.VN</b></a>
                    <button class="navbar-toggler" type="button" data-mdb-toggle="collapse"
                        data-mdb-target="#navbarText" aria-controls="navbarText" aria-expanded="false"
                        aria-label="Toggle navigation">
                        <i class="fas fa-bars"></i>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarText">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link" href="home.jsp" aria-current="page" style="color: white;">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="product.jsp" style="color: white;">Product</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </header>

    <main>
        <form action="" method="POST" id="login-form">
            <div class="container">
                <div class="row justify-content-center" style="margin-top: 100px;">
                    <div class="col-md-5">
                        <img src="img/signupqc/signup.png" alt=""
                            style="box-shadow: 10px 10px 10px rgba(223, 60, 212, 0.271);">
                    </div>
                    <div class="col-md-7 col-lg-5">
                        <div class="login-wrap p-4 p-md-5">
                            <div class="icon d-flex align-items-center justify-content-center">
                                <span class="fa fa-user-o"></span>
                            </div>
                            <!-- Title login -->
                            <div class="form-group">
                                <h3 class="text-left mb-1" style="color: #9c27b0;">Login</h3>
                                <span class="text-left" style="font-size: 15px; color: dimgray">
                                    Welcome to the dietary supplemental shop</span>
                                <hr>
                            </div>
                            <!-- Input username -->
                            <div class="form-group">
                                <label for="" style="margin-bottom: 5px;">Username&nbsp;</label><label for=""
                                    style="color: red;">*</label>
                                <input type="text" name="username" id="username" class="form-control rounded-left"
                                    placeholder="Username">
                            </div>
                            <!-- Input password -->
                            <div class="form-group" style="margin-top: 20px;">
                                <label for="" style="margin-bottom: 5px;">Password&nbsp;</label><label for=""
                                    style="color: red;">*</label>
                                <input type="password" name="password" id="password" class="form-control rounded-left"
                                    placeholder="Password">
                            </div>
                            <!-- Submit login -->
                            <div class="form-group" style="margin-top: 25px;">
                                <button type="submit" id="btnLogin" name="btnLogin"
                                    class="form-control btn btn-primary rounded submit px-3"
                                    style="background-color: #9c27b0;" onclick="return login()">Login</button>
                            </div>
                            <div class="form-group" style="margin-top: 10px;">
                                <span id="loginError" style="color:red"></span>
                            </div>
                            <!-- Forgot password -->
                            <div class="form-group" style="margin-top: 20px;" align="center">
                                <a href="">Forgot password?</a>
                            </div>
                            <!-- Sign in other way -->
                            <div class="orther-login" align="center" style="margin-top: 20px;">
                                <div class="login-orther-line"></div>
                                <span class="login-orther-text" style="color: gray;">Sign in another way</span>
                                <div class="login-orther-line"></div>
                            </div>
                            <!-- Sign in with google -->
                            <div class="orther-login" align="center">
                                <button class="google-login">
                                    Login with Google
                                </button>
                            </div>
                            <div class="form-group" style="margin-top: 20px;" align="center">
                                Do not have an account? <a href="signup.jsp">Register here</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </main>

    <script>
        //Validate when click login button
        function login() {
            var username = document.getElementById("username").value;
            var password = document.getElementById("password").value;
            if (username != "" && password != "") {
                if(username.length >= 5 && username.length <= 30){
                    if(password.length >= 5 && password.length <= 30){
                        var specialChars = /[^a-zA-Z0-9]/g;
                        if (specialChars.test(username) == false) {
                           
                        }else{
                            document.getElementById("loginError").innerText = "Username must not contain special characters!";
                            return false;
                        }
                    }else{
                        document.getElementById("loginError").innerText = "Password must be between 5 and 30 characters!";
                    return false;
                    }                      
                }else{
                    document.getElementById("loginError").innerText = "Username must be between 5 and 30 characters!";
                    return false;
                }
            } else {
                document.getElementById("loginError").innerText = "Please fill in your username and password!";
                return false;
            }
        }
    </script>

    <!-- MDB -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/5.0.0/mdb.min.js"></script>

    <!-- Jquery -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</body>

</html>
