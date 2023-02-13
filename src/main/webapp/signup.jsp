<%-- 
    Document   : signup
    Created on : Feb 12, 2023, 9:14:07 AM
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

            .radio-group {
                display: inline-block;
                margin-left: 30px;
                cursor: pointer;
            }

            .radio-group input[type="radio"] {

            }

            .radio-group label {
                padding-left: 20px;
                background-position: 0 0;
                background-repeat: no-repeat;
            }

            .radio-group input[type="radio"]:checked + label {
                background-position: 0 -20px;
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

        <main>
            <form action="" method="POST" id="login-form">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-md-5">
                            <img src="img/signupqc/signup.png" alt="" class="image"
                                 style="box-shadow: 10px 10px 10px rgba(223, 60, 212, 0.271);margin-top: 80px;">
                        </div>
                        <div class="col-md-7 col-lg-5">
                            <div class="login-wrap p-4 p-md-5">
                                <!-- Title login -->
                                <div class="form-group">
                                    <h3 class="text-left mb-1" style="color: #9c27b0;">Register</h3>
                                    <span class="text-left" style="font-size: 15px; color: dimgray">
                                        Welcome to the dietary supplemental shop</span>
                                    <hr>
                                </div>
                                <!-- Input Fullname -->
                                <div class="form-group">
                                    <label for="" style="margin-bottom: 5px;">Full name&nbsp;</label><label for=""
                                                                                                            style="color: red;">*</label>
                                    <input type="text" name="fullname" id="fullname" class="form-control rounded-left"
                                           placeholder="Ex: Casey Williams">
                                </div>
                                <!-- Choose gender -->
                                <div class="form-group">
                                    <label for="" style="margin-top: 20px;">Gender&nbsp;</label><label for="" style="color: red;">*</label>
                                </div>
                                <div class="form-group">
                                    <div class="radio-group">
                                        <input type="radio" name="gender" id="genderMale" style="margin-left: 30px" checked>
                                        <label for="genderMale">Male</label>
                                    </div>
                                    <div class="radio-group">
                                        <input type="radio" name="gender" id="genderFemale" style="margin-left: 30px">
                                        <label for="genderFemale">Female</label>
                                    </div>
                                </div>
                                <!-- Input username -->
                                <div class="form-group">
                                    <label for="" style="margin-top: 20px;">Username&nbsp;</label><label for=""
                                                                                                         style="color: red;">*</label>
                                    <input type="text" name="username" id="username" class="form-control rounded-left"
                                           placeholder="Ex: abc123">
                                </div> 
                                <!-- Input password -->
                                <div class="form-group" style="margin-top: 20px;">
                                    <label for="" style="margin-bottom: 5px;">Password&nbsp;</label><label for=""
                                                                                                           style="color: red;">*</label>
                                    <input type="password" name="password" id="password" class="form-control rounded-left"
                                           placeholder="Between 5 and 30 characters">
                                </div>
                                <!-- Confirm password -->
                                <div class="form-group" style="margin-top: 20px;">
                                    <label for="" style="margin-bottom: 5px;">Confirm Password&nbsp;</label><label for=""
                                                                                                                   style="color: red;">*</label>
                                    <input type="password" name="confirmPassword" id="confirmPassword" class="form-control rounded-left"
                                           placeholder="Please enter again password!">
                                </div>
                                <!-- Input security question -->
                                <div class="form-group">
                                    <label for="" style="margin-top: 20px;">Security&nbsp;</label><label for=""
                                                                                                         style="color: red;">*</label>
                                    <input type="text" name="securityques" id="securityques" class="form-control rounded-left"
                                           value="What's Your Primary School's Name?" style="margin-bottom: 10px" readonly>
                                    <input type="text" name="securityAnswer" id="securityAnswer" class="form-control rounded-left"
                                           placeholder="Security answer">
                                </div>    
                                <!-- Input Phone Number -->
                                <div class="form-group">
                                    <label for="" style="margin-top: 20px;">Phone Number&nbsp;</label><label for=""
                                                                                                             style="color: red;">*</label>
                                    <input type="text" name="phoneNumber" id="phoneNumber" class="form-control rounded-left"
                                           placeholder="Please enter your phone number!">
                                </div>
                                <!-- Input email -->
                                <div class="form-group">
                                    <label for="" style="margin-top: 20px;">Email&nbsp;</label><label for=""
                                                                                                      style="color: red;">*</label>
                                    <input type="text" name="email" id="email" class="form-control rounded-left"
                                           placeholder="example@gmail.com">
                                </div>                                                             

                                <!-- Submit login -->
                                <div class="form-group" style="margin-top: 25px;">
                                    <button type="submit" id="btnSignUp" name="btnSignUp"
                                            class="form-control btn btn-primary rounded submit px-3"
                                            style="background-color: #9c27b0;" onclick="return register()">Register</button>
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
                               
                                <!-- Sign in other way -->
                                <div class="orther-login" align="center" style="margin-top: 20px;">
                                    <div class="login-orther-line"></div>
                                    <span class="login-orther-text" style="color: gray;">Register another way</span>
                                    <div class="login-orther-line"></div>
                                </div>
                                <!-- Sign in with google -->
                                <div class="orther-login" align="center">
                                    <button class="google-login">
                                        Register with Google
                                    </button>
                                </div>
                                <div class="form-group" style="margin-top: 20px;" align="center">
                                    Do you already have an account? <a href="login.jsp">Login here</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </main>

        <script>
            //Validate when click login button
            function register() {
                var fullname = document.getElementById("fullname").value;
                var email = document.getElementById("email").value;
                var username = document.getElementById("username").value;
                var password = document.getElementById("password").value;
                var confirmPassword = document.getElementById("confirmPassword").value;
                var phone = document.getElementById("phoneNumber").value;
                var answer = document.getElementById("securityAnswer").value;
                if (fullname != "" && username != "" && password != "" && confirmPassword != "" && email != "" && phone != "" && answer != "") {
                    var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
                    if (re.test(String(email).toLowerCase()) == true) {
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
                                        if (confirmPassword.length >= 5 && confirmPassword.length <= 30) {
                                            var lowerCase = /[a-z]/g;
                                            var upperCase = /[A-Z]/g;
                                            var numbers = /[0-9]/g;
                                            if (lowerCase.test(confirmPassword) && upperCase.test(confirmPassword) && numbers.test(confirmPassword)) {
                                                if (confirmPassword == password) {
                                                    var phoneRegex = /^\d{10}$|^\d{3}-\d{3}-\d{4}$|^\d{3} \d{3} \d{4}$/;
                                                    if (phoneRegex.test(phone) == true) {
                                                        if (answer.length >= 5 && answer.length <= 30) {

                                                        } else {
                                                            document.getElementById("regError").innerText =
                                                                    "Answer must be between 5 and 30 characters!";
                                                            return false;
                                                        }
                                                    } else {
                                                        document.getElementById("regError").innerText =
                                                                "Phone number is not valid!";
                                                        return false;
                                                    }
                                                } else {
                                                    document.getElementById("regError").innerText =
                                                            "Confirm Password not the same with Password!";
                                                    return false;
                                                }
                                            } else {
                                                document.getElementById("regError").innerText =
                                                        "Confirm Password must include at least one lowercase letter, one uppercase letter, and one number!";
                                                return false;
                                            }
                                        } else {
                                            document.getElementById("regError").innerText = "Confirm Password must be between 5 and 30 characters!";
                                            return false;
                                        }
                                    } else {
                                        document.getElementById("regError").innerText =
                                                "Password must include at least one lowercase letter, one uppercase letter, and one number!";
                                        return false;
                                    }
                                } else {
                                    document.getElementById("regError").innerText = "Password must be between 5 and 30 characters!";
                                    return false;
                                }
                            } else {
                                document.getElementById("regError").innerText = "Username must start with a letter!";
                                return false;
                            }
                        } else {
                            document.getElementById("regError").innerText = "Username must be between 5 and 30 characters!";
                            return false;
                        }
                    } else {
                        document.getElementById("regError").innerText = "Email is not valid!";
                        return false;
                    }
                } else {
                    document.getElementById("regError").innerText = "Please fill all information account to register!";
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
