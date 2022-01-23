<%@ Page Language="C#" AutoEventWireup="true" CodeFile="A_forgotpassword.aspx.cs" Inherits="Admin_A_forgotpassword" %>

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

    
</head>
<body>
   <div class="login-container d-flex ">
       <form class="login-form text-center " runat="server">
           <h3 class="mb-5">Forgot Password </h3>
            <div class="form-group ">
                <asp:TextBox ID="txtemail" CssClass="form-control rounded-pill mb-5 form-control-lg" runat="server" placeholder="Enter the Email"></asp:TextBox>
            </div>
           
               <asp:Button ID="btnsendotp" CssClass="btn btn-custum btn-block text-uppercase rounded-pill btn-lg mb-4" runat="server" Text="Send Otp"  />
           
        </form>
    </div>
    <script src="bootstrap-4.4.1-dist/bootstrap-4.4.1-dist/js/bootstrap.bundle.js"></script>
    <script src="bootstrap-4.4.1-dist/bootstrap-4.4.1-dist/js/bootstrap.bundle.min.js"></script>
    <script src="bootstrap-4.4.1-dist/bootstrap-4.4.1-dist/js/bootstrap.js"></script>
    <script src="bootstrap-4.4.1-dist/bootstrap-4.4.1-dist/js/bootstrap.min.js"></script>
</body>
</html>
