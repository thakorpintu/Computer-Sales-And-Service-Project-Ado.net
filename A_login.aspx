<%@ Page Language="C#" AutoEventWireup="true" CodeFile="A_login.aspx.cs" Inherits="Admin_A_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Login- Admin</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="bootstrap-4.4.1-dist/bootstrap-4.4.1-dist/css/bootstrap.css" rel="stylesheet" />
    <link href="bootstrap-4.4.1-dist/bootstrap-4.4.1-dist/css/bootstrap-reboot.css" rel="stylesheet" />
    <link href="bootstrap-4.4.1-dist/bootstrap-4.4.1-dist/css/bootstrap-grid.min.css" rel="stylesheet" />

    <link href="bootstrap-4.4.1-dist/bootstrap-4.4.1-dist/css/bootstrap-grid.css" rel="stylesheet" />
    <link href="css/Login.css" rel="stylesheet" />



    <!-- Custom styles for this template-->

</head>
<body>

    <div class="login-container d-flex align-items-center justify-content-center">
        <form class="login-form text-center" runat="server">
            <h3 class="mb-5 font-weight-light text-uppercase">Admin Login</h3>
            <div class="form-group">

                <asp:TextBox ID="txtemail" required="email" TextMode="Email" CssClass="form-control rounded-pill form-control-lg" placeholder="Enter Your Email" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:TextBox ID="txtpassword" TextMode="Password" CssClass="form-control rounded-pill form-control-lg" placeholder="Enter Your Password" runat="server"></asp:TextBox>
            </div>
            <div class="forgot-link d-flex align-items-center mb-5 justify-content-between">
                <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="remeber" />
                    <label for="remeber">Remeber Password</label>
                </div>
                <a href="A_forgotpassword.aspx">Forget Password?</a>
            </div>

            <asp:Button ID="btnlogin" CssClass="btn btn-custum btn-block text-uppercase rounded-pill btn-lg mb-4" OnClick="btnlogin_Click" runat="server" Text="Login" />
           <%-- <p class="mt-3 font-weight-normal">Dont't have an account <a href="#"><strong>Register</strong></a></p>--%>
        </form>
    </div>

    <script src="bootstrap-4.4.1-dist/bootstrap-4.4.1-dist/js/bootstrap.bundle.js"></script>
    <script src="bootstrap-4.4.1-dist/bootstrap-4.4.1-dist/js/bootstrap.bundle.min.js"></script>
    <script src="bootstrap-4.4.1-dist/bootstrap-4.4.1-dist/js/bootstrap.js"></script>
    <script src="bootstrap-4.4.1-dist/bootstrap-4.4.1-dist/js/bootstrap.min.js"></script>

</body>
</html>

