<%-- 
    Document   : login
    Created on : Feb 12, 2023, 9:09:40 AM
    Author     : Huynh Chi Hai
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
            form {
                background-color: #f2f2f2;
                border-radius: 10px;
            }

            .icon {
                background-color: #9c27b0;
                border-radius: 50%;
                width: 70px;
                height: 70px;
                display: flex;
                align-items: center;
                justify-content: center;
                margin: 0 auto;
            }

            .icon span {
                color: white;
                font-size: 40px;
            }

            h3 {
                margin-bottom: 30px;
            }

            label {
                font-weight: bold;
            }

            input[type="text"],
            input[type="password"] {
                border: none;
                border-radius: 25px;
                padding: 10px;
                margin-bottom: 20px;
                width: 100%;
                box-sizing: border-box;
                font-size: 16px;
                background-color: #fff;
            }

            input[type="text"]:focus,
            input[type="password"]:focus {
                outline: none;
            }

            .submit {
                background-color: #9c27b0;
                color: white;
                font-weight: bold;
                border-radius: 25px;
                padding: 10px 20px;
                margin-top: 20px;
                width: 100%;
                box-sizing: border-box;
                font-size: 16px;
            }

            .submit:hover {
                background-color: #7b1fa2;
            }

            .orther-login {
                margin-top: 20px;
                display: flex;
                align-items: center;
                justify-content: center;
            }

            .orther-login .login-orther-line {
                height: 1px;
                width: 100px;
                background-color: gray;
                margin: 0 20px;
            }

            .orther-login .login-orther-text {
                font-size: 14px;
                color: gray;
                margin: 0 20px;
            }

            .google-login {
                background-color: #db4437;
                color: white;
                font-weight: bold;
                border-radius: 25px;
                padding: 10px 20px;
                margin-top: 20px;
                width: 100%;
                box-sizing: border-box;
                font-size: 16px;
                cursor: pointer;
            }

            .google-login:hover {
                background-color: #c62828;
            }

            /* Tablet styles */
            @media (max-width: 991px) {
                .container {
                    padding: 0 20px;
                }

                .col-md-5, .col-md-7 {
                    flex: 0 0 100%;
                    max-width: 100%;
                }

                .col-lg-5 {
                    display: none;
                }

                .login-wrap {
                    padding: 20px;
                }
            }

            /* Mobile styles */
            @media (max-width: 767px) {
                .container {
                    padding: 0 10px;
                }

                .icon {
                    font-size: 30px;
                }

                h3 {
                    font-size: 20px;
                }

                .form-group label {
                    font-size: 14px;
                }

                input[type="text"], input[type="password"] {
                    font-size: 14px;
                }

                button[type="submit"] {
                    font-size: 14px;
                }

                a {
                    font-size: 14px;
                }
            }
        </style>
    </head>

    <body>
        <%
            String mess = (String) request.getAttribute("mess");
        %>
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
    </nav>
</div>
</header>

<form action="/login" method="POST" id="login-form">
    <div class="container">
        <div class="row justify-content-center" style="">
            <div class="col-md-5">
                <a href="/login/NewAccount">
                    <img src="img/signupqc/signup.png" alt=""
                         style="box-shadow: 10px 10px 10px rgba(223, 60, 212, 0.271); margin-top: 100px;">
                </a>
            </div>

            <div class="col-md-7 col-lg-5">
                <div class="login-wrap p-4 p-md-5">
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
                               placeholder="Please enter your username!">
                    </div>
                    <!-- Input password -->
                    <div class="form-group" style="margin-top: 20px;">
                        <label for="" style="margin-bottom: 5px;">Password&nbsp;</label><label for=""
                                                                                               style="color: red;">*</label>
                        <input type="password" name="password" id="password" class="form-control rounded-left"
                               placeholder="Please enter your password!">
                    </div>
                    <!-- Submit login -->
                    <div class="form-group" style="margin-top: 25px;">
                        <button type="submit" id="btnSignIn" name="btnSignIn"
                                class="form-control btn btn-primary rounded submit px-3"
                                style="background-color: #9c27b0;" onclick="return login()">Login</button>
                    </div>
                    <%
                        if (mess != null) {
                    %>
                    <div class="form-group" style="margin-top: 10px;">
                        <span id="regError" style="color:red"><%= mess%></span>
                    </div>
                    <%
                    } else {
                    %>
                    <div class="form-group" style="margin-top: 10px;">
                        <span id="regError" style="color:red"></span>
                    </div>
                    <%
                        }
                    %>
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
                        <a href="https://accounts.google.com/o/oauth2/auth?scope=email%20profile%20openid&redirect_uri=http://localhost:8080/login/google&response_type=code
                           &client_id=931742517382-quh16iu9mem5r4gbo5r1kk1uos757t11.apps.googleusercontent.com&approval_prompt=force">                                    
                            <button class="google-login" type="button">
                                Login with Google
                            </button></a>
                    </div>
                    <div class="form-group" style="margin-top: 20px;" align="center">
                        Do not have an account? <a href="/signup">Register here</a>
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
            if (username.length >= 5 && username.length <= 30) {
                var firstChar = username.charAt(0);
                var specialChars = /[^a-zA-Z0-9]/g;
                var numbers = /[0-9]/g;
                if (!numbers.test(firstChar) && !specialChars.test(firstChar)) {
                    if (password.length >= 5 && password.length <= 30) {
                        var lowerCase = /[a-z]/g;
                        var upperCase = /[A-Z]/g;
                        var numbers = /[0-9]/g;
                        if (lowerCase.test(password) && upperCase.test(password) && numbers.test(password)) {
                            // Your code to process a successful login
                        } else {
                            document.getElementById("loginError").innerText =
                                    "Password must include at least one lowercase letter, one uppercase letter, and one number!";
                            return false;
                        }
                    } else {
                        document.getElementById("loginError").innerText = "Password must be between 5 and 30 characters!";
                        return false;
                    }
                } else {
                    document.getElementById("loginError").innerText = "Username must start with a letter!";
                    return false;
                }
            } else {
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
