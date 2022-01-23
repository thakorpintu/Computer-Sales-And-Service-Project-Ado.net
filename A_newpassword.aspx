<%@ Page Language="C#" AutoEventWireup="true" CodeFile="A_newpassword.aspx.cs" Inherits="Admin_A_newpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="bootstrap-4.4.1-dist/bootstrap-4.4.1-dist/css/bootstrap.css" rel="stylesheet" />
    <link href="bootstrap-4.4.1-dist/bootstrap-4.4.1-dist/css/bootstrap-reboot.css" rel="stylesheet" />
    <link href="bootstrap-4.4.1-dist/bootstrap-4.4.1-dist/css/bootstrap-grid.min.css" rel="stylesheet" />

    <link href="bootstrap-4.4.1-dist/bootstrap-4.4.1-dist/css/bootstrap-grid.css" rel="stylesheet" />
  
    <link href="css/Login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
      <div class="login-container d-flex align-items-center justify-content-center ">
       <div class="login-form text-center " runat="server">
           <h3 class="mb-5 font-weight-light ">New Password set </h3>
            <div class="form-group ">
                <asp:TextBox ID="TextBox1" CssClass="form-control rounded-pill form-control-lg" runat="server" placeholder="Enter New Password"></asp:TextBox>
            </div>
            <div class="form-group ">
                <asp:TextBox ID="TextBox2" CssClass="form-control rounded-pill mb-5 form-control-lg " runat="server" placeholder="Enter confirm password"></asp:TextBox>
            </div>
           
               <a class="btn btn-custum btn-block text-uppercase text-white rounded-pill btn-lg mb-5">SAVE</a>
           
        </div>
    </div>

   <script src="bootstrap-4.4.1-dist/bootstrap-4.4.1-dist/js/bootstrap.bundle.js"></script>
    <script src="bootstrap-4.4.1-dist/bootstrap-4.4.1-dist/js/bootstrap.bundle.min.js"></script>
    <script src="bootstrap-4.4.1-dist/bootstrap-4.4.1-dist/js/bootstrap.js"></script>
    <script src="bootstrap-4.4.1-dist/bootstrap-4.4.1-dist/js/bootstrap.min.js"></script>


    
    
    </form>
</body>
</html>
